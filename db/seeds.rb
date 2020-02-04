# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = User.create(name: "Dulce", email: "dulce@woof.com", password: "123456", password_confirmation:"123456")
b = User.create(name: "Matty", email: "matty@woof.com", password: "123456", password_confirmation:"123456")
c = User.create(name: "Amber", email: "amber@woof.com", password: "123456", password_confirmation:"123456")
d = User.create(name: "Bea", email: "bea@woof.com", password: "123456", password_confirmation:"123456")

a.talks.create(title:"It is all a metaphore: Lyrics 101", description:"Be cryptic, be misterious and create a chart topper while you do.", location: "Manchester", date: "Feb 21, 2020", time: "9:30am", speaker_name: "Matty", speaker_title:"Riddle expert")
b.talks.create(title:"Get your bone: Motivate yourself to succeed", description:"Tips to get what you deserve", location: "Glastonbury", date: "Feb 21, 2020", time: "10:30am", speaker_name: "Dulce", speaker_title:"Woof expert")
c.talks.create(title:"It is okay not to be okay", description:"Take a deep breath, come and join", location: "Manchester", date: "Feb 22, 2020", time: "10:30am", speaker_name: "Amber", speaker_title:"Japanese techniques expert")
d.talks.create(title:"Bones first, cookies later: The ultimate cookbook", description:"Woof woof home made meals", location: "London", date: "Feb 25, 2020", time: "11:30am", speaker_name: "Dulce", speaker_title:"Woof expert")
d.talks.create(title: "Fitness bone running", description: "Woof woof", location: "Manchester", date: "Feb 26, 2020", time: "8:30am", speaker_name: "Dulce", speaker_title: "Woof expert")
c.talks.create(title: "Chasing my tail: a memoir", description: "Woof woof", location: "Manchester", date: "Feb 26, 2020", time: "11:30am", speaker_name: "Dulce", speaker_title: "Woof expert")
a.talks.create(title: "REACTing to change", description: "React and hooks intro", location: "London", date: "Feb 27, 2020", time: "8:30am", speaker_name: "Matty", speaker_title: "Riddle expert")
b.talks.create(title:"Ember vs Vue: 101", description:"Intro to frontend 101", location: "Glastonbury", date: "Feb 27, 2020", time: "2:30pm", speaker_name: "Amber", speaker_title:"Japanese techniques expert")

a.schedules.create(talk_id: 2)
b.schedules.create(talk_id: 1)
c.schedules.create(talk_id: 4)
d.schedules.create(talk_id: 3)