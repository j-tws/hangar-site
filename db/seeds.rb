# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#seed for Eatery

print "Creating users..."

User.destroy_all

u1 = User.create!(
    name: "Morty Smith",
    email: "morty@rick.co",
    password: 'chicken',
    image: 'https://static.wikia.nocookie.net/rickandmorty/images/e/ee/Morty501.png/revision/latest?cb=20210827150137',
    phone: '82381922'
)

u2 = User.create!(
    name: "Saul Goodman",
    email: "saul@bcs.co",
    password: 'chicken',
    image: "https://upload.wikimedia.org/wikipedia/en/3/34/Jimmy_McGill_BCS_S3.png",
    phone: '83827822'

)

u3 = User.create!(
    name: "Rick Sanchez",
    email: "rick@rick.co",
    password: 'chicken',
    image: "https://pyxis.nymag.com/v1/imgs/bb2/701/c4787eccc4a76307518ae0632fb9196faa-rick-and-morty.rsquare.w700.jpg",
    phone: '23761232'
)

u4 = User.create!(
    name: "admin",
    email: "admin@test.co",
    password: 'chicken',
    image: "https://images-platform.99static.com//IPe0v0pH9L0RRxKL6GKKoSPghrA=/0x0:2014x2014/fit-in/500x500/99designs-contests-attachments/132/132039/attachment_132039471",
    phone: '1231233',
    admin: true
)

puts "created #{User.count} users"

###########################################################

print "Creating eatery types..."

EateryType.destroy_all

restaurant = EateryType.create!(
    name: "Restaurant"
)

bar = EateryType.create!(
    name: "Bar"
)

cafe = EateryType.create!(
    name: "Cafe"
)

puts "created #{EateryType.count} types"

###########################################################


print "Creating eateries..."

Eatery.destroy_all

e1 = Eatery.create!(
    name: "Belle's Hot Chicken",
    cuisine: "American Southern",
    location: "Fitzroy & Melbourne",
    price_range: 30,
    description: "Belles' crave-worthy chicken, great booze, vinyl-friendly soundtrack and legendary parties quickly proved to be a cult favourite for a neighbourhood mainstay",
    image: "https://cdn.broadsheet.com.au/cache/ea/e6/eae61f49a357bae69a9aed3df1dae634.jpg"

)

e2 = Eatery.create!(
    name: "Leonardo's Pizza Palace",
    cuisine: "Italian",
    location: "Carlton",
    price_range: 40,
    description: "Well known for it's standout pepperoni pizzas, and the more current is the jalapeno with fermented pepper and cheese. The kitchen also churns out smashable, approachable start-of-the-night dishes that lend themselves to a raucous evening.",
    image: "https://cdn.broadsheet.com.au/cache/d5/99/d59981a391c4c3e51cc3a27bf40e123d.jpg"

)

e3 = Eatery.create!(
    name: "Greens Refactory",
    cuisine: "Breakfast & Pastries",
    location: "Brunswick",
    price_range: 25,
    description: "Biscuits, more cakes, pastries and pides line the counter, with substantial breakfast, lunch and brunch options visible on a protein-heavy menu that makes this cafe a local favourite in the neighbourhood.",
    image: "https://cdn.broadsheet.com.au/cache/6f/ba/6fba4ab3cd682f74d06a35936887691f.jpg"

)

e4 = Eatery.create!(
    name: "Boilermaker",
    cuisine: "Hearty bites & craft alcohol",
    location: "Melbourne",
    price_range: 30,
    description: "Biscuits, more cakes, pastries and pides line the counter, with substantial breakfast, lunch and brunch options visible on a protein-heavy menu that makes this cafe a local favourite in the neighbourhood.",
    image: "https://cdn.broadsheet.com.au/cache/9c/a6/9ca60b90612b760bf09374d5cbc31c2b.jpg"
)

e5 = Eatery.create!(
    name: "Builder Arms Hotel",
    cuisine: "Contemporary pub grub",
    location: "Collingwood",
    price_range: 40,
    description: "A place where there is a front bar for you to throw back easy-drinking lagers and ale, with a table-service bistro where you feast through well made burger or rotisserie of the day.",
    image: "https://cdn.broadsheet.com.au/cache/8a/6d/8a6d4172345b2fcaa838849b23b24ff8.jpg"
)

puts "created #{Eatery.count} eateries"

#create association
e1.eatery_types << restaurant << bar
e2.eatery_types << restaurant
e3.eatery_types << cafe
e4.eatery_types << bar
e5.eatery_types << restaurant << bar

#####################################################


print "Creating bookings..."

Booking.destroy_all

b1 = Booking.create!(
    eatery_name: "Leonardo's Pizza Palace",
    people_number: 3,
    phone: "92309102",
    email: "123@chic.co",
    time: "23rd August 2022, 7pm",
    user_id: u1.id,
    eatery_id: e2.id
)

b2 = Booking.create!(
    eatery_name: "Builder Arms Hotel",
    people_number: 5,
    phone: "92309123",
    email: "3456@chic.co",
    time: "24th September 2022, 7pm",
    user_id: u2.id,
    eatery_id: e5.id
)

b3 = Booking.create!(
    eatery_name: "Greens Refactory",
    people_number: 2,
    phone: "89721234",
    email: "1234@chic.co",
    time: "3rd November 2022, 8am",
    user_id: u3.id,
    eatery_id: e3.id
)

b4 = Booking.create!(
    eatery_name: "Boilermaker",
    people_number: 2,
    phone: "89723473",
    email: "555@chic.co",
    time: "1st September 2022, 7pm",
    user_id: u1.id,
    eatery_id: e4.id
)

b5 = Booking.create!(
    eatery_name: "Belle's Hot Chicken",
    people_number: 3,
    phone: "89723122",
    email: "test@chic.co",
    time: "1st September 2022, 8pm",
    user_id: u2.id,
    eatery_id: e1.id
)

b6 = Booking.create!(
    eatery_name: "Green Refactory",
    people_number: 3,
    phone: "89333122",
    email: "test@chic.co",
    time: "1st September 2022, 12pm",
    user_id: u3.id,
    eatery_id: e3.id
)

puts "created #{Booking.count} bookings"


####################################################
