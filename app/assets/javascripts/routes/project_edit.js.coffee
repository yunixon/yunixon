App.ProjectEditRoute = Ember.Route.extend

  activate:   -> @controllerFor('project').set 'isEditing', true
  deactivate: -> @controllerFor('project').set 'isEditing', false