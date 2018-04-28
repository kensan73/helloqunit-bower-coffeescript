QUnit.module 'Calculator',
  beforeEach: ->
    @calculator = new Calculator()

QUnit.test 'should add two numbers', (assert) ->
  assert.equal @calculator.add(4, 5), 9