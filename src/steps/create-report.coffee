Promise = require 'bluebird'
fs = require 'fs'
istanbul = require 'istanbul'

# A class to create a coverage report
module.exports = class PrepareTest
  # Create the coverage report with istanbul
  # @param args [Promise<Array>] The arguments to the script
  # @return [Promise] The arguments to the script
  run: (args) ->
    new Promise (resolve, reject) ->
      coverageFile = 'coverage/coverage-coffee.json'

      Report = istanbul.Report
      report = Report.create 'html', { dir: 'coverage/html-report' }
      Collector = istanbul.Collector
      collector = new Collector()

      coverageObject = JSON.parse(fs.readFileSync(coverageFile, 'utf8'))
      collector.add coverageObject

      report.on 'done', -> resolve args
      report.writeReport collector
