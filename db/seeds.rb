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

u5 = User.create!(
    name: "admin2",
    email: "admin2@test.co",
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

print "Creating states..."

State.destroy_all

s1 = State.create!(
    name: "VIC"
)

s2 = State.create!(
    name: "NSW"
)

puts "created #{State.count} states"
#######################################################


print "Creating eateries..."

Eatery.destroy_all

e1 = Eatery.create!(
    name: "Belle's Hot Chicken",
    cuisine: "American Southern",
    location: "Fitzroy & Melbourne",
    price_range: 30,
    description: "Belles' crave-worthy chicken, great booze, vinyl-friendly soundtrack and legendary parties quickly proved to be a cult favourite for a neighbourhood mainstay",
    image: "https://cdn.broadsheet.com.au/cache/ea/e6/eae61f49a357bae69a9aed3df1dae634.jpg",
    user_id: u4.id,
    state_id: s1.id,
    menu: "https://i.imgur.com/EcGvz6D.png"
)

e2 = Eatery.create!(
    name: "Leonardo's Pizza Palace",
    cuisine: "Italian",
    location: "Carlton",
    price_range: 40,
    description: "Well known for it's standout pepperoni pizzas, and the more current is the jalapeno with fermented pepper and cheese. The kitchen also churns out smashable, approachable start-of-the-night dishes that lend themselves to a raucous evening.",
    image: "https://cdn.broadsheet.com.au/cache/d5/99/d59981a391c4c3e51cc3a27bf40e123d.jpg",
    user_id: u4.id,
    state_id: s1.id,
    menu: "https://i.imgur.com/7lxJSKB.png"
)

e3 = Eatery.create!(
    name: "Greens Refactory",
    cuisine: "Breakfast & Pastries",
    location: "Brunswick",
    price_range: 25,
    description: "Biscuits, more cakes, pastries and pides line the counter, with substantial breakfast, lunch and brunch options visible on a protein-heavy menu that makes this cafe a local favourite in the neighbourhood.",
    image: "https://cdn.broadsheet.com.au/cache/6f/ba/6fba4ab3cd682f74d06a35936887691f.jpg",
    user_id: u4.id,
    state_id: s1.id,
    menu: "https://i.imgur.com/WTXnHRU.png"
)

e4 = Eatery.create!(
    name: "Boilermaker",
    cuisine: "Hearty bites & craft alcohol",
    location: "Melbourne",
    price_range: 30,
    description: "Biscuits, more cakes, pastries and pides line the counter, with substantial breakfast, lunch and brunch options visible on a protein-heavy menu that makes this cafe a local favourite in the neighbourhood.",
    image: "https://cdn.broadsheet.com.au/cache/9c/a6/9ca60b90612b760bf09374d5cbc31c2b.jpg",
    user_id: u5.id,
    state_id: s1.id,
    menu: "https://i.imgur.com/YLgf4DG.jpg"
)

e5 = Eatery.create!(
    name: "Builder Arms Hotel",
    cuisine: "Contemporary pub grub",
    location: "Collingwood",
    price_range: 40,
    description: "A place where there is a front bar for you to throw back easy-drinking lagers and ale, with a table-service bistro where you feast through well made burger or rotisserie of the day.",
    image: "https://cdn.broadsheet.com.au/cache/8a/6d/8a6d4172345b2fcaa838849b23b24ff8.jpg",
    user_id: u5.id,
    state_id: s1.id,
    menu: "https://i.imgur.com/yONq3Q5.png"
)

e6 = Eatery.create!(
    name: "Quay",
    cuisine: "Modern Contemporary",
    location: "Sydney",
    price_range: 120,
    description: "Quay is a restaurant in Sydney, Australia. It is owned by Leon Fink, and is run by chef Peter Gilmore. It has won several awards in Australia, and has appeared in The World's 50 Best Restaurants several times.",
    image: "https://cdn.broadsheet.com.au/cache/06/d4/06d42eb0159a83501fce3727543c5cba.jpg",
    user_id: u5.id,
    state_id: s2.id,
    menu: "https://i.imgur.com/YogJT4f.png"
)

e7 = Eatery.create!(
    name: "Bourke Street Bakery",
    cuisine: "Breakfast food & pastries",
    location: "Sydney",
    price_range: 15,
    description: "Every outlet offers a range of organic sourdough in flavours such as hazelnut and raisin; soy and linseed; fig and cranberry; and potato and rosemary (aka Mr Potato Bread). Then there are sausage rolls filled with lamb and harissa; chicken and pumpkin; and pork and fennel.",
    image: "https://cdn.broadsheet.com.au/cache/f8/85/f885aada005943affba8d367c06971c4.jpg",
    user_id: u4.id,
    state_id: s2.id,
    menu: "https://i.imgur.com/F7H5qhJ.png"
)

e8 = Eatery.create!(
    name: "Vue de Monde",
    cuisine: "Modern Contemporary",
    location: "Melbourne",
    price_range: 500,
    description: "Given Vue de Monde's reputation, a meal at the restaurant comes with expectations nearly as high as its lofty location. Steering away from its initial European-leaning beginnings towards an offering more informed by native Australian ingredients and techniques, it makes dining at Vue is as much an experience as it is a meal. ",
    image: "https://cdn.broadsheet.com.au/cache/cb/57/cb57460763dfdb5f5ba1abd2859197f1.jpg",
    user_id: u4.id,
    state_id: s2.id,
    menu: "https://i.imgur.com/tqoJAfV.jpg"
)

e9 = Eatery.create!(
    name: "Old Mate's Place",
    cuisine: "Hearty snacks and craft alcohols",
    location: "Sydney",
    price_range: 35,
    description: "More than your everage bar, there's a short and sharp cocktail list to select from. For food, sink your teeth into a hefty Philly cheese steak or a rotating selection of deli meats and ploughman's plates.",
    image: "https://cdn.broadsheet.com.au/cache/d4/f7/d4f725bf50135d50199ae208477e54e6.jpg",
    user_id: u5.id,
    state_id: s2.id,
    menu: "https://i.imgur.com/8gQcFWo.png"
)

puts "created #{Eatery.count} eateries"

#create association
e1.eatery_types << restaurant << bar
e2.eatery_types << restaurant
e3.eatery_types << cafe
e4.eatery_types << bar
e5.eatery_types << restaurant << bar
e6.eatery_types << restaurant << bar
e7.eatery_types << cafe
e8.eatery_types << restaurant << bar << cafe
e9.eatery_types << bar

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

print "Creating enquiries..."

Enquiry.destroy_all

en1 = Enquiry.create!(
    query: "Please add more eateries",
    user_id: u1.id,
    response: "I've already added"
)

en2 = Enquiry.create!(
    query: "Please help me cancel my booking",
    user_id: u2.id,
    response: "Done already canceled"
)

en3 = Enquiry.create!(
    query: "Please add my favourite bar called this",
    user_id: u3.id,
    response: "Already added"
)

en4 = Enquiry.create!(
    query: "Please help me change my booking",
    user_id: u2.id,
    response: "Already changed"
)

en5 = Enquiry.create!(
    query: "Please add my favourite cafe to the list",
    user_id: u3.id,
    response: "Done. Already added"
)

en6 = Enquiry.create!(
    query: "Please help me delete my account",
    user_id: u1.id,
)

puts "created #{Enquiry.count} enquiries"

########################################################

print "Creating photos..."

Photo.destroy_all

p1 = Photo.create!(
    name: "Belle photo 1",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933324/Project%201%20Images/belle_photo_1_ypywf5.jpg",
    description: "The infamous Belle's fried chicken",
    eatery_id: e1.id
)

p2 = Photo.create!(
    name: "Belle photo 3",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933324/Project%201%20Images/belle_photo_2_op2lle.jpg",
    description: "Ned Whiskey, Coke, Plum Kombucha",
    eatery_id: e1.id
)

p3 = Photo.create!(
    name: "Belle photo 3",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933324/Project%201%20Images/belle_photo_3_ptbw3e.jpg",
    description: "A table of goodness",
    eatery_id: e1.id
)

p4 = Photo.create!(
    name: "Leonardo photo 1",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933326/Project%201%20Images/leonardo_photo_1_t2liqw.jpg",
    description: "Pepperoni Pizza",
    eatery_id: e2.id
)

p5 = Photo.create!(
    name: "Leonardo photo 2",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933326/Project%201%20Images/leonardo_photo_2_l7br2z.jpg",
    description: "Anchovy Crostini",
    eatery_id: e2.id
)

p6 = Photo.create!(
    name: "Leonardo photo 3",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933326/Project%201%20Images/leonardo_photo_3_ozszsz.jpg",
    description: "Penne Pepperonata",
    eatery_id: e2.id
)

p7 = Photo.create!(
    name: "Greens photo 1",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933326/Project%201%20Images/greens_photo_1_ho7ezo.jpg",
    description: "Green's Popular Breakfast Stack",
    eatery_id: e3.id
)

p8 = Photo.create!(
    name: "Greens photo 2",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933326/Project%201%20Images/greens_photo_2_agoidf.jpg",
    description: "Breakfast Burger",
    eatery_id: e3.id
)

p9 = Photo.create!(
    name: "Greens photo 3",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933326/Project%201%20Images/greens_photo_3_ztxzsz.jpg",
    description: "House made Sausage Roll",
    eatery_id: e3.id
)

p10 = Photo.create!(
    name: "Boilermaker photo 1",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933324/Project%201%20Images/boilermaker_photo_1_c1betg.jpg",
    description: "Boilermakers - whiskey and beer on the go",
    eatery_id: e4.id
)

p11 = Photo.create!(
    name: "Boilermaker photo 2",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933324/Project%201%20Images/boilermaker_photo_2_mpcikg.jpg",
    description: "Ploughman's paddle",
    eatery_id: e4.id
)

p12 = Photo.create!(
    name: "Boilermaker photo 3",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933324/Project%201%20Images/boilermaker_photo_3_lfbgpx.jpg",
    description: "Your unconventional whiskey",
    eatery_id: e4.id
)

p13 = Photo.create!(
    name: "Builders photo 1",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933325/Project%201%20Images/builder_photo_1_rmsreq.jpg",
    description: "Chicken Parma",
    eatery_id: e5.id
)

p14 = Photo.create!(
    name: "Builders photo 2",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933325/Project%201%20Images/builder_photo_2_xw1ikr.jpg",
    description: "Fish Pie",
    eatery_id: e5.id
)

p15 = Photo.create!(
    name: "Builders photo 3",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933325/Project%201%20Images/builder_photo_3_nqpuhm.jpg",
    description: "A table of happiness",
    eatery_id: e5.id
)

p16 = Photo.create!(
    name: "Quay photo 1",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933327/Project%201%20Images/quay_photo_1_x88qjy.jpg",
    description: "White coral, feijoa, white chocolate, coconut",
    eatery_id: e6.id
)

p17 = Photo.create!(
    name: "Quay photo 2",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933327/Project%201%20Images/quay_photo_2_ebybak.jpg",
    description: "Pea garden, miso, anchovy",
    eatery_id: e6.id
)

p18 = Photo.create!(
    name: "Quay photo 3",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933327/Project%201%20Images/quay_photo_3_repcsr.jpg",
    description: "Maremma duck, slow-cooked carrots, red dates, karkalla",
    eatery_id: e6.id
)

p19 = Photo.create!(
    name: "Bourke photo 1",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933325/Project%201%20Images/bourke_photo_1_z5m8zw.jpg",
    description: "Freshly Baked Breads",
    eatery_id: e7.id
)

p20 = Photo.create!(
    name: "Bourke photo 2",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933325/Project%201%20Images/bourke_photo_2_lpjf7o.jpg",
    description: "Sausage Rolls",
    eatery_id: e7.id
)

p21 = Photo.create!(
    name: "Bourke photo 3",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933325/Project%201%20Images/bourke_photo_3_v0dig0.jpg",
    description: "Various flavoured muffins",
    eatery_id: e7.id
)

p22 = Photo.create!(
    name: "Vue photo 1",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933327/Project%201%20Images/vue_photo_1_foyjc9.jpg",
    description: "Luscious chocolate souffle",
    eatery_id: e8.id
)

p23 = Photo.create!(
    name: "Vue photo 2",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933327/Project%201%20Images/vue_photo_2_c4apfk.jpg",
    description: "Heirloom Tomatoes and Mirabelle Plum",
    eatery_id: e8.id
)

p24 = Photo.create!(
    name: "Vue photo 3",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933328/Project%201%20Images/vue_photo_3_khvudx.jpg",
    description: "Western Australia Marron 'Curry' ",
    eatery_id: e8.id
)

p25 = Photo.create!(
    name: "Oldmate photo 1",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933327/Project%201%20Images/oldmate_photo_1_pqvamv.jpg",
    description: "Customizable cocktail",
    eatery_id: e9.id
)

p26 = Photo.create!(
    name: "Oldmate photo 2",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933326/Project%201%20Images/oldmate_photo_2_dquqfi.jpg",
    description: "Daiquiri",
    eatery_id: e9.id
)

p27 = Photo.create!(
    name: "Oldmate photo 3",
    url: "https://res.cloudinary.com/dpu8e4ucu/image/upload/v1661933327/Project%201%20Images/oldmate_photo_3_yyplin.jpg",
    description: "The alcohol shelf",
    eatery_id: e9.id
)

puts "created #{Photo.count} photos"
