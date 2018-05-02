QUnit.module 'Calculator',
  beforeEach: ->
    @calculator = new Calculator()

QUnit.test 'should add two numbers', (assert) ->
  assert.equal @calculator.add(4, 5), 9

QUnit.test 'should subtract two numbers', (assert) ->
  assert.equal @calculator.subtract(4, 5), -1
