App.ProjectsController = Ember.ArrayController.extend
  sortProperties: ['name']

  projects: ( ->
    if @get('search') then @get('searchedProjects') else @
  ).property('search', 'searchedProjects')

  searchedProjects: ( ->
    search = @get('search').toLowerCase()
    @filter (project) => project.get('name').toLowerCase().indexOf(search) != -1
  ).property('search', '@each.name')