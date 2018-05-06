QUnit.module 'Calculator',
  beforeEach: ->
    @calculator = new Calculator()

QUnit.test 'can be created', (assert) ->
  assert.notEqual(undefined, @calculator)

QUnit.test 'can add two numbers', (assert) ->
  assert.equal(7, @calculator.add(3, 4))

QUnit.test 'can add three numbers', (assert) ->
  assert.equal(18, @calculator.add(3, 4, 11))

QUnit.test 'can subtract numbers', (assert) ->
  assert.equal(-1, @calculator.subtract(11, 12))

