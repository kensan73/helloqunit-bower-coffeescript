QUnit.module 'Calculator',
  beforeEach: ->
    @calculator = new Calculator()

QUnit.test 'should add two numbers', (assert) ->
  done = assert.async();

  assert.equal @calculator.add(4, 5), 9

  done()
