ClimberMountain.destroy_all
Climber.destroy_all
Mountain.destroy_all
Gear.destroy_all

cl1 = Climber.create(name: "John Allen", password: "1234", age: 24, location: "Broomfield", email: "j.allen@gmail.com", phone_number: "720-334-1276")
cl2 = Climber.create(name: "Patrick Hoehn", password: "1234", age: 29, location: "Broomfield", email: "patrh_99@hotmail.com", phone_number: "815-441-4279")
cl3 = Climber.create(name: "Timothy Demar", password: "1234", age: 18, location: "Arvada", email: "TimDemar@yahoo.com", phone_number: "720-333-9786")
cl4 = Climber.create(name: "Rick Grimes", password: "1234", age: 53, location: "Arvada", email: "GimeyGuy@gmail.com", phone_number: "723-223-6248")
cl5 = Climber.create(name: "Susi Wingly", password: "1234", age: 22, location: "Denver", email: "susi_bird_lover@hotmail.com", phone_number: "123-321-1123")
cl6 = Climber.create(name: "Terri Clinker", password: "1234", age: 44, location: "Denver", email: "Terri_the_climber@gmail.com", phone_number: "720-334-3334")
cl7 = Climber.create(name: "Allison Bill", password: "1234", age: 30, location: "Colorado Springs", email: "BigBills@gmail.com", phone_number: "763-322-1412")
cl8 = Climber.create(name: "Colin Bounce", password: "1234", age: 28, location: "Arvada", email: "i_dont_bounce@gmail.com", phone_number: "633-224-5789")
cl9 = Climber.create(name: "Sally Sands", password: "1234", age: 20, location: "Broomfield", email: "sally.sands@AOL.com", phone_number: "")

mt1 =Mountain.create(name: "Everest", height: 29029, easy_climbs: 38, medium_climbs: 49, hard_climbs: 331 )

ClimberMountain.create(climber: cl1, mountain:mt1)

Gear.create(name: "Rope", climber:cl1)
Gear.create(name: "Quickdraws", climber:cl1)
Gear.create(name: "Carabiners", climber: cl2)

