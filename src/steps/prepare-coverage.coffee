coffeeCoverage = require 'coffee-coverage'

# A class to prepare test coverage
module.exports = class PrepareCoverage
  # Prepare coffee coverage
  # @param args [Promise<Array>] The arguments to the script
  # @return [Promise] The arguments to the script
  run: (args) ->
    coverageVar = coffeeCoverage.findIstanbulVariable()
    coffeeCoverage.register
      instrumentor: 'istanbul'
      basePath: process.cwd()
      exclude: ['/test', '/node_modules', '/.git', '**/*.[Ss]pec.coffee']
      coverageVar: coverageVar
      writeOnExit: null
      initAll: true

    return args
