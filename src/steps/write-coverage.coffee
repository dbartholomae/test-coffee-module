coffeeCoverage = require 'coffee-coverage'
fs = require 'fs'
path = require 'path'

# A class to write coverage
module.exports = class PrepareTest
  # Write coverage to file
  # @param args [Promise<Array>] The arguments to the script
  # @return [Promise] The arguments to the script
  run: (args) ->
    coverageVar = coffeeCoverage.findIstanbulVariable() ? "_$coffeeIstanbul"

    coverageDir = 'coverage'
    coverageFile = 'coverage-coffee.json'
    try
      fs.mkdirSync coverageDir
    catch err
      throw err unless err.code is 'EEXIST'
    fs.writeFileSync path.join(coverageDir, coverageFile), JSON.stringify(global[coverageVar], null, 2)

    return args
