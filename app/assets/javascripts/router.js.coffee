# For more information see: http://emberjs.com/guides/routing/
App.Router.reopen
  location: 'auto'
  rootURL: '/'

App.Router.map ->
  @resource 'projects', path: '/', ->
    @route 'new'
    @resource 'project', path: '/projects/:id', ->
      @route 'edit'

