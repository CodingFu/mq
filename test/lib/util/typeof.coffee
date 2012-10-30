assert = require 'assert'
typeOf = require __filename.replace("/test", "")

describe 'propper typeOf', ->

  it 'undefined should be an "Undefined"', ->
    assert.equal typeOf(undefined), "Undefined"

  it 'null should be a "Null"', ->
    assert.equal typeOf(null), "Null"

  it 'NaN should be a "Number"', ->
    assert.equal typeOf(NaN), "Number"

  it 'Number should be a "Number"', ->
    assert.equal (typeOf 1), "Number"
    assert.equal (typeOf 1.5), "Number"

  it 'Boolean should be a "Boolean"', ->
    assert.equal (typeOf true), "Boolean"
    assert.equal (typeOf false), "Boolean"

  it 'String should be a "String"', ->
    assert.equal (typeOf "abc"), "String"

  it 'new String() should be a "String"', ->
    assert.equal (typeOf new String()), "String"

  it 'Empty Array should be an "Array"', ->
    assert.equal (typeOf []), "Array"

  it 'new Array() should be an "Array"', ->
    assert.equal (typeOf new Array()), "Array"

  it 'Object should be an "Object"', ->
    assert.equal (typeOf {}), "Object"
