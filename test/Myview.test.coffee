QUnit.module 'Myview tests',
  beforeEach: ->
    @myview = new Myview()

QUnit.test 'can be new\'d', (assert) ->
  assert.notEqual @myview, undefined

QUnit.test 'is a backbone view', (assert) ->
  assert.equal true, @myview instanceof Backbone.View


QUnit.module 'initialize tests',
  beforeEach: ->
    sinon.spy(_, "bindAll")
    @myview = new Myview()

  afterEach: ->
    _.bindAll.restore()

QUnit.test 'initialize calls bindAll', (assert) ->
  assert.ok _.bindAll.calledOnce

QUnit.test 'bindAll argument matches', (assert) ->
  sinon.assert.calledWith(_.bindAll, sinon.match(@myview))
  assert.ok true

QUnit.test 'initialize calls render', (assert) ->
  renderStub = sinon.mock(@myview).expects('render').once()

  @myview.initialize()

  assert.ok renderStub.verify()
