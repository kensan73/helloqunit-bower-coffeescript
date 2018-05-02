QUnit.module 'MyBackboneView',
  beforeEach: ->
    @sut = new MyBackboneView

QUnit.test 'can be new\'d', (assert) ->
  assert.notEqual @sut, undefined