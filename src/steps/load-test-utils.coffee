# A class to load test utils
module.exports = class LoadTestUtils
  # Load utils
  # @param args [Promise<Array>] The arguments to the script
  # @return [Promise] The arguments to the script
  run: (args) ->
    chai = require "chai"
    global.expect = chai.expect
    chai.use require("chai-things")
    chai.use require("chai-as-promised")
    global.sinon = require "sinon"
    chai.use require("sinon-chai")

    return args
