App.ProjectEditController = Ember.ObjectController.extend

  actions:

    saveChanges: ->
      @get('model').save().then =>
        @transitionToRoute 'project'

    cancel: ->
      @get('model').rollback()
      @transitionToRoute 'project'