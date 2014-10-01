App.Project = DS.Model.extend
  name: DS.attr('string')
  description: DS.attr('string')
  link: DS.attr('string')
  status: DS.attr('string', defaultValue: 'Active')
  photo: DS.attr('string')