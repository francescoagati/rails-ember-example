@Home = ->

  fullname = -> @get("firstName") + " " + @get("lastName")
  

  @App = Ember.Application.create({})
  @App.personController = Ember.Object.create
    firstName: "Alan"
    lastName: "Turing"
    fullName: fullname.property("firstName", "lastName")
    didRSVP: false
  
  view = Ember.View.create
    templateName: "rsvp"
    name: "Bob"
  
  view.appendTo "#pippa"