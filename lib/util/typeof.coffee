# works just like typeof but can 'Array' and 'String'

module.exports = (primitive) ->
  if typeof primitive == 'undefined'
    "Undefined" 
  else
    Object.prototype.toString.call(primitive).slice(8, -1)
