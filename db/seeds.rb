ClimberMountain.destroy_all
ClimberGear.destroy_all
Gear.destroy_all
Messages.destroy_all
Climber.destroy_all
Mountain.destroy_all


cl1 = Climber.create(name: "John Allen", password: "1234", age: 24, location: "Broomfield", email: "j.allen@gmail.com", phone_number: "720-334-1276")
cl2 = Climber.create(name: "Patrick Hoehn", password: "1234", age: 29, location: "Broomfield", email: "patrh_99@hotmail.com", phone_number: "815-441-4279")
cl3 = Climber.create(name: "Timothy Demar", password: "1234", age: 18, location: "Arvada", email: "TimDemar@yahoo.com", phone_number: "720-333-9786")
cl4 = Climber.create(name: "Rick Grimes", password: "1234", age: 53, location: "Arvada", email: "GimeyGuy@gmail.com", phone_number: "723-223-6248")
cl5 = Climber.create(name: "Susi Wingly", password: "1234", age: 22, location: "Denver", email: "susi_bird_lover@hotmail.com", phone_number: "123-321-1123")
cl6 = Climber.create(name: "Terri Clinker", password: "1234", age: 44, location: "Denver", email: "Terri_the_climber@gmail.com", phone_number: "720-334-3334")
cl7 = Climber.create(name: "Allison Bill", password: "1234", age: 30, location: "Colorado Springs", email: "BigBills@gmail.com", phone_number: "763-322-1412")
cl8 = Climber.create(name: "Colin Bounce", password: "1234", age: 28, location: "Arvada", email: "i_dont_bounce@gmail.com", phone_number: "633-224-5789")
cl9 = Climber.create(name: "Sally Sands", password: "1234", age: 20, location: "Broomfield", email: "sally.sands@AOL.com", phone_number: "")

mt1 = Mountain.create(name: "Everest", height: 29029, easy_climbs: 38, medium_climbs: 49, hard_climbs: 331 )
mt2 = Mountain.create(name: "Pikes Peak", height: 14114, easy_climbs: 22, medium_climbs: 32, hard_climbs: 9 )
mt3 = Mountain.create(name: "Mount Elbert", height: 14439, easy_climbs: 12, medium_climbs: 65, hard_climbs: 88 )
mt4 = Mountain.create(name: "Longs Peak", height: 14259, easy_climbs: 2, medium_climbs: 23, hard_climbs: 12 )
mt5 = Mountain.create(name: "Mount Evans", height: 14265, easy_climbs: 32, medium_climbs: 60, hard_climbs: 90 )
mt6 = Mountain.create(name: "Mount Massive", height: 14429, easy_climbs: 34, medium_climbs: 12, hard_climbs: 98 )
mt7 = Mountain.create(name: "Mount Sneffels", height: 14157, easy_climbs: 34, medium_climbs: 2, hard_climbs: 84 )
mt8 = Mountain.create(name: "Blanca Peak", height: 14344, easy_climbs: 1, medium_climbs: 2, hard_climbs: 9 )
 

ClimberMountain.create(climber: cl1, mountain:mt1)
ClimberMountain.create(climber: cl1, mountain:mt2)
ClimberMountain.create(climber: cl1, mountain:mt6)
ClimberMountain.create(climber: cl2, mountain:mt2)
ClimberMountain.create(climber: cl2, mountain:mt3)
ClimberMountain.create(climber: cl3, mountain:mt4)
ClimberMountain.create(climber: cl3, mountain:mt1)
ClimberMountain.create(climber: cl3, mountain:mt8)
ClimberMountain.create(climber: cl3, mountain:mt3)
ClimberMountain.create(climber: cl4, mountain:mt2)
ClimberMountain.create(climber: cl4, mountain:mt3)
ClimberMountain.create(climber: cl5, mountain:mt5)
ClimberMountain.create(climber: cl6, mountain:mt6)
ClimberMountain.create(climber: cl6, mountain:mt7)
ClimberMountain.create(climber: cl6, mountain:mt1)
ClimberMountain.create(climber: cl7, mountain:mt2)
ClimberMountain.create(climber: cl7, mountain:mt3)
ClimberMountain.create(climber: cl7, mountain:mt5)
ClimberMountain.create(climber: cl7, mountain:mt6)
ClimberMountain.create(climber: cl7, mountain:mt8)
ClimberMountain.create(climber: cl8, mountain:mt2)
ClimberMountain.create(climber: cl8, mountain:mt5)
ClimberMountain.create(climber: cl8, mountain:mt7)

g1 = Gear.create(name: "Rope")
g2 = Gear.create(name: "Quickdraws")
g3 = Gear.create(name: "Carabiners")
g4 = Gear.create(name: "Harnesses")
g5 = Gear.create(name: "Helmet")
g6 = Gear.create(name: "Belay Device")
g7 = Gear.create(name: "GRIGRI")
g8 = Gear.create(name: "Rackpack")
g9 = Gear.create(name: "Stoppers")
g10 = Gear.create(name: "Anchor System")
g11 = Gear.create(name: "Cams")
g12 = Gear.create(name: "Ascender")
g13 = Gear.create(name: "Pulley")
g14 = Gear.create(name: "Crash Pad")
g15 = Gear.create(name: "Braking Device")
g16 = Gear.create(name: "Ice Screw")
g17 = Gear.create(name: "Cable Picket")
g18 = Gear.create(name: "Equalizer")
g19 = Gear.create(name: "Clamp")
g20 = Gear.create(name: "Anchor Chain")
g21 = Gear.create(name: "Key Nut Tool")
g22 = Gear.create(name: "Ball Nut Stoppers")
g23 = Gear.create(name: "Cable Picket")
g24 = Gear.create(name: "Snow Picket")
g25 = Gear.create(name: "Descender")
g26 = Gear.create(name: "Snow Fluke")
g27 = Gear.create(name: "Power Cam")
g28 = Gear.create(name: "Stick-Clip Quickdraw")
g29 = Gear.create(name: "Rescue Pulley")
g30 = Gear.create(name: "Gate Carabiner")
g31 = Gear.create(name: "Screwlock Carabiner")
g32 = Gear.create(name: "Rock Nut Set #6-10")
g33 = Gear.create(name: "Rock Nut Set #11-14")
g34 = Gear.create(name: "Kwiklock Carabiner")
g35 = Gear.create(name: "Wired Nut")
g36 = Gear.create(name: "Mega Carabiner")
g37 = Gear.create(name: "Straight Gate Carabiner")
g38 = Gear.create(name: "Ball-Lock Carabiner")
g39 = Gear.create(name: "Screwgate Carabiner")
g40 = Gear.create(name: "Cliffhanger Hook")
g41 = Gear.create(name: "Talon Hook")
g42 = Gear.create(name: "Ice Clipper")
g43 = Gear.create(name: "Descending Ring")
g44 = Gear.create(name: "Snow Anchor")
g45 = Gear.create(name: "Twin Gate Belay Kit")
g46 = Gear.create(name: "Peenut Stopper Set")
g47 = Gear.create(name: "Small Fixed Pulley")
g48 = Gear.create(name: "Large Mobile Pulley")
g49 = Gear.create(name: "Bent Carabiner")
g50 = Gear.create(name: "Multipurpose Compact Ascender")
g51 = Gear.create(name: "Chest Ascender")
g52 = Gear.create(name: "Feather Nut Tool")
g53 = Gear.create(name: "Mini Prusik Pulley")
g54 = Gear.create(name: "Brass Offset Stoppers Set")
g55 = Gear.create(name: "Swivel")
g56 = Gear.create(name: "Rapel Ring")
g57 = Gear.create(name: "Finder Cam")
g58 = Gear.create(name: "Wired Wallnuts")
g59 = Gear.create(name: "Squid Stick Clip Climbing Aid")
g60 = Gear.create(name: "Fifi Hook")
g61 = Gear.create(name: "Stop Descender")
g62 = Gear.create(name: "Screw Link")
g63 = Gear.create(name: "Wired Piton")
g64 = Gear.create(name: "Expandable Tube Chock")
g65 = Gear.create(name: "Pro Ascender")
g66 = Gear.create(name: "Express Quickdraw Sling")
g67 = Gear.create(name: "Ringing Plate")
g68 = Gear.create(name: "Oval Carabiner")
g69 = Gear.create(name: "Extendable Quickdraw Set")
g70 = Gear.create(name: "Link Cam")
g71 = Gear.create(name: "Gate Carabiner")
g72 = Gear.create(name: "Walnut Set")
g73 = Gear.create(name: "Hand Ascender")
g74 = Gear.create(name: "Rope Clamp")
g75 = Gear.create(name: "Body Ascender")
g76 = Gear.create(name: "Friend Cam")
g77 = Gear.create(name: "Bat Ringing Plate")
g78 = Gear.create(name: "Vertigo Lanyard")
g79 = Gear.create(name: "Ice Screw Holder")
g80 = Gear.create(name: "Picket Cable")
g81 = Gear.create(name: "Partner Pulley")
g82 = Gear.create(name: "Rescue Kit")
g83 = Gear.create(name: "Rotor Swivel")
g84 = Gear.create(name: "Camalot Cam")
g85 = Gear.create(name: "Belay Chain")
g86 = Gear.create(name: "Axess Sling")
g87 = Gear.create(name: "Hybrid Quickpack")
g88 = Gear.create(name: "Hotwire Quickpack")
g89 = Gear.create(name: "FlexCam Cams")

ClimberGear.create(gear: g1, climber: cl1)
ClimberGear.create(gear: g1, climber: cl2)
ClimberGear.create(gear: g1, climber: cl3)
ClimberGear.create(gear: g1, climber: cl4)
ClimberGear.create(gear: g1, climber: cl5)
ClimberGear.create(gear: g1, climber: cl6)
ClimberGear.create(gear: g1, climber: cl7)
ClimberGear.create(gear: g1, climber: cl8)
ClimberGear.create(gear: g1, climber: cl9)
ClimberGear.create(gear: g2, climber: cl1)
ClimberGear.create(gear: g2, climber: cl2)
ClimberGear.create(gear: g2, climber: cl3)
ClimberGear.create(gear: g2, climber: cl4)
ClimberGear.create(gear: g3, climber: cl6)
ClimberGear.create(gear: g4, climber: cl6)
ClimberGear.create(gear: g5, climber: cl6)
ClimberGear.create(gear: g6, climber: cl6)
ClimberGear.create(gear: g7, climber: cl6)
ClimberGear.create(gear: g8, climber: cl7)
ClimberGear.create(gear: g9, climber: cl6)
ClimberGear.create(gear: g10, climber: cl8)
ClimberGear.create(gear: g11, climber: cl8)
ClimberGear.create(gear: g12, climber: cl9)
ClimberGear.create(gear: g13, climber: cl9)
ClimberGear.create(gear: g14, climber: cl2)
ClimberGear.create(gear: g15, climber: cl3)
ClimberGear.create(gear: g16, climber: cl4)
ClimberGear.create(gear: g17, climber: cl5)
ClimberGear.create(gear: g18, climber: cl6)
ClimberGear.create(gear: g19, climber: cl7)
ClimberGear.create(gear: g20, climber: cl8)

Messages.create(message: "What's up? You climb?", sender: cl1, receiver: cl6)
Messages.create(message: "Hey bud. Did you want to go climbing this weekend? I'll bring the gear!!", sender: cl1, receiver: cl3)
Messages.create(message: "Stop...Messaging...ME!!!!!!", sender: cl4, receiver: cl1)



