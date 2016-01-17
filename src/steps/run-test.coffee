Promise = require 'bluebird'
path = require 'path'

# A class to prepare tests
module.exports = class RunTest
  # Run the tests with mocha
  # @param args [Promise<Array>] The arguments to the script
  # @return [Promise] The arguments to the script
  run: (args) ->
    new Promise (resolve, reject) ->
      Mocha = require 'mocha'
      mocha = new Mocha()

      files = []
      args.forEach (arg) ->
        files = files.concat Mocha.utils.lookupFiles arg, ['.coffee'], true

      files = files.map (file) ->
        path.resolve file

      mocha.files = files
      mocha.reporter "spec"
      mocha.run (code) ->
        if code is 0 then resolve args
        else reject code
