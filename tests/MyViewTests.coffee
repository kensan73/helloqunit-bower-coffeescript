QUnit.module 'MyView',
  beforeEach: -> @myview = new MyView()

QUnit.test 'can be new\'d', (assert) ->
  assert.notEqual(@myview, undefined)

QUnit.module 'MyView::initialize',
  beforeEach: -> @myview2 = new MyView()

QUnit.test 'exists as a function', (assert) ->
  assert.equal(typeof @myview2.initialize, 'function')

QUnit.test 'calls render', (assert) ->
  mock = sinon.mock(@myview2).expects('render').once()

  @myview2.initialize()

  assert.ok mock.verify()
