App.ProjectsNewController = Ember.Controller.extend

  actions:

    createProject: ->
      fields = @get('fields')
      if App.Project.valid(fields)
        project = @store.createRecord 'project', @get('fields')
        project.save().then =>
          @transitionToRoute 'project', project
      else
        @set 'showError', true