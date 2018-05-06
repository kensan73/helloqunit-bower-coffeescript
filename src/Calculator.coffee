class window.Calculator
  add: (values...) ->
    values.reduce((accumulator, currentValue) -> accumulator + currentValue)

  subtract: (x, y) ->
    x - y