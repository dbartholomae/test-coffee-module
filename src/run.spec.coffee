Promise = require 'bluebird'

describe "A test run by test-server-module", ->
  it "has access to expect", ->
    expect(true).to.be.true

  it "has access to chai-as-promised", ->
    expect(Promise.reject()).to.eventually.be.rejected

  it "has access to sinon-chai", ->
    stub = sinon.stub()
    stub()
    expect(stub).to.have.been.called

  it "has access to chai-things", ->
    expect([{ a: 1 }]).to.include.something.that.deep.equals { a: 1 }


