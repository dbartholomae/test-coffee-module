Promise = require 'bluebird'
fs = require 'fs'

# A class to check minimum coverage
module.exports = class CheckCoverage
  # Check minimum coverage with Istanbul
  # @param args [Promise<Array>] The arguments to the script
  # @return [Promise] The arguments to the script
  run: (args) ->
    Promise.fromCallback (cb) ->
      coverageFile = 'coverage/coverage-coffee.json'

      registerPlugins = require 'istanbul/lib/register-plugins'
      Command = require 'istanbul/lib/command/command'
      checkCoverage = require 'istanbul/lib/command/check-coverage'

      try
        commandObject = Command.create('check-coverage');
      catch ex
        cb ex
        return
      commandObject.run([], cb);
