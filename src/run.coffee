Promise = require 'bluebird'
program = require 'commander'
winston = require 'winston'

# Bundles mocha, chai, sinon, sinon-chai, chai-things, chai-as-promised, istanbul and
# coffee-coverage into one command.
module.exports = class TestRunner
  # Creates a new TestRunner
  # @param (options) [Object] Options
  # @option options coverage [Boolean] Whether to create coverage report [false]
  # @option options debug [Boolean] Whether to output debug information [false]
  constructor: (options = {}) ->
    @options =
      coverage: options.coverage?
      debug: options.debug?

    if @options.debug
      winston.level = 'debug'

  # Run tests from a set of files
  # @param files [Array<String>] Test files or globs for test files
  # @return [Promise] A Promise resolving when the tests are done
  run: (files) ->
    testSteps = ['load-test-utils', 'run-test']
    if @options.coverage
      testSteps = ['prepare-coverage'].concat testSteps.concat ['write-coverage', 'create-report']

    testPromise = Promise.resolve files
    winston.debug 'Running steps ' + testSteps + ' on files ' + files
    for stepName in testSteps
      do (stepName) ->
        testPromise = testPromise.then (files) ->
          Step = require './steps/' + stepName
          step = new Step()
          winston.debug "Running step " + stepName
          step.run(files)

    testPromise.catch (err) ->
      winston.debug err
      throw err

    return testPromise

  # Run test files based on command line arguments.
  # Test files will default ['src/**/*.[sS]pec.coffee'] if empty
  # Available flags are "-c"/"--coverage" and "-d"/"--debug"
  # @overload run(args, cb)
  #   @param args [Array] The arguments to the script
  #   @param cb [Function] A node-style callback that will be called with any error encountered
  # @overload run(args)
  #   @param args [Array] The arguments to the script.
  #   @return [Promise] A promise that rejects with any errors encountered
  @run: (args = [], cb) ->
    program
    .version require('../package.json').version
    .usage '[options] <files...>'
    .option '-c, --coverage', 'create a coverage report'
    .option '-d, --debug', 'log output useful for debuggin'
    .parse args

    if program.args.length is 0
      program.args = ['src/**/*.[sS]pec.coffee'] #, 'examples/**/*.[sS]pec.coffee']

    testPromise = new TestRunner(program).run(program.args)

    if cb?
      testPromise
      .then -> cb()
      .catch cb
      return
    else
      return testPromise
