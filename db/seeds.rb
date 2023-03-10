puts "Destroying database"

User.destroy_all
Restaurant.destroy_all
Post.destroy_all
Favorite.destroy_all

puts "Seeding users...👥"

u1= User.create(username: "matthew", password: "1234", email: "matthew@gmail.com", profile_pic: "data:image/png;base64,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" )
u2= User.create(username: "lianzi", password: "1234", email: "jennifer@gmail.com", profile_pic: "https://images.theconversation.com/files/438138/original/file-20211216-25-1hu3e65.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop" )
u3= User.create(username: "adam", password: "1234", email: "adam@gmail.com", profile_pic: "https://www.acouplecooks.com/wp-content/uploads/2020/04/Manhattan-Cocktail-002.jpg" )
u4= User.create(username: "cerimay  ", password: "1234", email: "ceri@gmail.com", profile_pic: "https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/field_blog_entry_teaser_image/PT_dog_pic_cover_0.png.jpg?itok=wnWCDUk2" )
u5= User.create(username: "paige", password: "1234", email: "paige@gmail.com", profile_pic: "https://scontent.fosu2-1.fna.fbcdn.net/v/t1.6435-9/69651319_10157171557082199_8810918459039809536_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=ovUdy1y8dWcAX_BX8pH&_nc_ht=scontent.fosu2-1.fna&oh=00_AfCrZIfck2x0f_rh6BfqgxoahdPXoT5wZhZVazI8lv7o5A&oe=63E7BADE" )
u6= User.create(username: "justin", password: "1234", email: "justin@gmail.com", profile_pic: "https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2020/4/28/bjoyslzjb3uxqyg82uz2/minecraft" )
u7= User.create(username: "sam", password: "1234", email: "sam@gmail.com", profile_pic: "https://www.shutterstock.com/image-vector/wizard-warlock-logo-design-inspiration-260nw-1897349269.jpg" )
u8= User.create(username: "henry", password: "1234", email: "henry@gmail.com", profile_pic: "https://www.heart.org/-/media/Images/News/2020/April-2020/0420MarijuanaHeart_SC.jpg?h=600&w=800&hash=655F7840B9B4F2DC0697D2005EB1CEF4" )
u9= User.create(username: "martin", password: "1234", email: "martin@gmail.com", profile_pic: "https://m.media-amazon.com/images/I/41nSRUAKcUL._AC_.jpg" )


puts "Users seeded!"

puts "Seeding restaurants..."

r1= Restaurant.create(business_name:"Casa Enrique", address: "5-48 49th Avenue", phone_number: "347-448-6050", website: "https://casaenriquelic.com/", image_url:"https://pyxis.nymag.com/v1/imgs/e62/4e1/184e6c4aecf34de85b66382f94936f30d8-casa-enrique-01.rsocial.w1200.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "New-Mexican", price: "$$")
r2= Restaurant.create(business_name:"Cote", address: "16 West 22nd Street", phone_number: "212-401-7986", website:"https://www.cotenyc.com/", image_url:"https://static01.nyt.com/images/2017/11/15/dining/15REST-2/15REST-slide-PS6H-jumbo.jpg", likes: rand(1...500), google_coordinates:"", user_id: User.all.sample.id, cuisine: "Korean", price:"$$$")
r3= Restaurant.create(business_name:"Lilia", address: "567 Union Avenue", phone_number: "718-576-3095", website:"https://www.lilianewyork.com/", image_url:"https://cdn.vox-cdn.com/thumbor/ugtkIL78w2b6biNZ90nupxM_L3s=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/20080749/20200711_GH_LILIA_1003.jpg", likes: rand(1...500), google_coordinates:"", user_id: User.all.sample.id, cuisine: "Italian", price:"$$$")
r4= Restaurant.create(business_name: "Thai Villa", address: "5 East 19th Street", phone_number: "212-802-9999", website: "https://thaivillanyc.com/", image_url:"https://fastly.4sqi.net/img/general/width960/453334238_09zGX1bdXxu1WUCKOkYdD2hKDL5480e3np7UGTNKcb4.jpg", likes: rand(1...500), google_coordinates:"", user_id: User.all.sample.id, cuisine: "Thai", price: "$$")
r5= Restaurant.create(business_name: "Catch", address: "88 9th avenue", phone_number: "212-858-8899", website:"https://www.catchrestaurants.com/location/catch-nyc/", image_url:"https://images.otstatic.com/prod/24367633/1/huge.jpg", likes: rand(1...500), google_coordinates:"", user_id: User.all.sample.id, cuisine: "Seafood", price: "$$$$")
r6= Restaurant.create(business_name: "Sushi Yasuda", address: "204 E 43rd Street", phone_number: "212-972-1001", website: "https://www.sushiyasuda.com/information.html", image_url: "https://static01.nyt.com/images/2011/11/16/dining/16REST_CHAMELEON-slide-LZPN/16REST_CHAMELEON-slide-LZPN-jumbo.jpg", likes: rand(1...500), google_coordinates:"", user_id: User.all.sample.id, cuisine: "Japanese", price: "$$$$")
r7= Restaurant.create(business_name:"Dhamaka", address: "119 Delancey Street", phone_number: "Only Accepts Walk-ins", website:"https://www.dhamaka.nyc/", image_url:"https://cdn.vox-cdn.com/thumbor/UE840OUhtj_CYLFFylJE3d69WDY=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22293218/AF_Dhamaka_Interior_7.jpg", likes: rand(1...500), google_coordinates:"", user_id: User.all.sample.id, cuisine: "Indian", price: "$$")
r8= Restaurant.create(business_name: "Lupe's East L.A. Kitchen", address: "110 6th avenue", phone_number: "212-966-1326", website:"https://lupeskitchen.com/", image_url:"https://media.guestofaguest.com/t_article_content/gofg-media/2016/04/1/46155/lupes.jpg", likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Mexican", price:"$$")
r9= Restaurant.create(business_name:"Pierozek", address: "592 Manhattan Avenue", phone_number: "718-576-3866", website: "https://www.pierozekbrooklyn.com/", image_url:"https://static01.nyt.com/images/2020/01/09/dining/09HUNGRY-slide-64LH/09HUNGRY-slide-64LH-mobileMasterAt3x.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Polish", price: "$$")
r10= Restaurant.create(business_name:"Kikis", address: "130 Division Street", phone_number: "646-882-7052", website: "https://kikisnewyork.mybistro.online/#location", image_url:"https://i.pinimg.com/736x/73/de/2a/73de2a76fc6a74c10d9dc998efbae506.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Greek", price: "$$")
r11= Restaurant.create(business_name: "Ippudo", address: "65 4th avenue", phone_number: "212-388-0088", website: "https://ippudony.com/", image_url: "https://cdn.vox-cdn.com/thumbor/MqrH-ZqTV0sI0K2pLPvAd-40J9g=/0x0:1000x750/920x613/filters:focal(420x295:580x455):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/54789783/ippudo_ny.0.jpg", likes: rand(1...500), google_coordinates:"", user_id: User.all.sample.id, cuisine: "Japanese", price: "$$")
r12= Restaurant.create(business_name:"Chinese Tuxedo", address: "5 Doyer Street", phone_number: "646-355-8693", website: "https://www.chinesetuxedo.com/", image_url:"https://cdn.vox-cdn.com/thumbor/NgDRFT2MuM5IYThSXDT5VBJZtzA=/0x0:5708x3805/1200x0/filters:focal(0x0:5708x3805):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/10332353/Chinese_Tuxedo_50.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Chinese", price: "$$$")
r13= Restaurant.create(business_name:"Scarrs", address: "22 Orchard Street", phone_number: "212-344-3481", website: "https://www.scarrspizza.com/", image_url:"https://assets3.thrillist.com/v1/image/1827368/1200x630",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Italian-America", price: "$")
r14= Restaurant.create(business_name: "Avant Garden", address:"130 E 7th Street", phone_number: "917-336-7179", website:"https://www.overthrowhospitality.com/venues/avantgarden", image_url: "https://image.resy.com/3/003/2/561/185147e1f6fae563da60ee9272ebc2d3f41fe3f9/jpg/1:1/1600",likes: rand(1...500), google_coordinates:"", user_id: User.all.sample.id, cuisine: "Vegan", price: "$$$")
r15= Restaurant.create(business_name:"Nyonya", address: "199 Grand Street", phone_number: "212-344-3669", website: "https://www.yelp.com/biz/nyonya-new-york", image_url:"https://infatuation.imgix.net/media/reviews/nyonya/banners/Nyonya_0.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Malaysian", price: "$")
r16= Restaurant.create(business_name: "Del Frisco", address: "1221 Ave of Americas", phone_number: "212-575-5129", website:"https://www.delfriscos.com/", image_url:"https://fastly.4sqi.net/img/general/600x600/13461002_qQf1zxqwHdfa5HndJcXNgYpWqpW1NPljWJMdmP8zb_c.jpg",likes: rand(1...500), google_coordinates:"", user_id: User.all.sample.id, cuisine: "American", price: "$$$$")
r17= Restaurant.create(business_name:"Brick Lane", address: "79 2nd Avenue", phone_number: "212-979-2900", website: "https://www.bricklanecurryhouse.com/", image_url:"https://images.squarespace-cdn.com/content/v1/53cc1616e4b0f4361f8ace24/1633188350348-T4OYNDD9FF3385UBB06C/Brick+Lane+JC-front-1.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Indian", price: "$$")
r18= Restaurant.create(business_name:"Electric Burrito", address: "81 St Marks Place", phone_number: "646-870-0104", website: "https://www.electricburritonyc.com/", image_url:"https://cititour.com/NYC_News/photos/Electric_Burrito,_East_Village,_NYC_1.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Mexican", price: "$")
r19= Restaurant.create(business_name:"21 Greenpoint", address: "21 Greenpoint Avenue", phone_number: "718-383-8833", website: "https://www.21greenpoint.com/", image_url:"https://infatuation.imgix.net/media/images/reviews/21-greenpoint/NoahDevereaux_21Greenpoint_Interior_37.JPG",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "New American", price: "$$")
r20= Restaurant.create(business_name:"Hometown Barbeque", address: "454 Van Brunt Street", phone_number: "347-294-4644", website: "https://hometownbbq.com/", image_url:"https://pyxis.nymag.com/v1/imgs/929/dc5/91970a0f6267ec45596e6b7285650aaebb-hometown-bbq-02.rsocial.w1200.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "BBQ", price: "$$")
r21= Restaurant.create(business_name:"Gallagher SteakHouse", address: "228 West 52nd Street", phone_number: "212-586-5000", website: "https://www.gallaghersnysteakhouse.com/", image_url:"https://pyxis.nymag.com/v1/imgs/337/21f/1930740fae60ea0ae84ba505a5232f4db5-gallaghers-steak-house-01.rsocial.w1200.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Steakhouse", price: "$$$")
r22= Restaurant.create(business_name:"Bill's Bar & Burger", address: "16 West 51 Street", phone_number: "212-705-8510", website: "https://www.billsbarandburger.com/", image_url:"https://images.getbento.com/accounts/fb707fea4db9f8bd2a3c03af160d32b5/media/images/34543IMG_0174.jpg?w=1200&fit=crop&auto=compress,format&h=600",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "American", price: "$$")
r23= Restaurant.create(business_name:"Sidney's Five", address: "103 1st Avenue", phone_number: "917-409-3368", website: "https://www.sidneysfive.com/menu", image_url:"https://media.timeout.com/images/105813987/750/422/image.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Breakfast-Brunch", price: "$$")
r24= Restaurant.create(business_name:"Katz Delicatessen", address: "205 E Houston Street", phone_number: "212-254-2246", website: "https://katzsdelicatessen.com/", image_url:"https://d2zyb4ugwufqpc.cloudfront.net/media/wysiwyg/web_2_1.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Kosher-Style", price: "$")
r25= Restaurant.create(business_name:"Wo Hop", address: "17 Mott Street", phone_number: "212-962-8617", website: "https://www.wohop17.com/", image_url:"https://cms.prod.nypr.digital/images/309556/fill-1200x650/",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Chinese", price: "$")
r26= Restaurant.create(business_name:"Fogo De Chao", address: "40 W 53rd Street", phone_number: "212-969-9980", website: "https://fogodechao.com/", image_url:"https://media.timeout.com/images/103410526/image.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Brazillian Steakhouse", price: "$$$")
r27= Restaurant.create(business_name:"Le Botaniste", address: "833 Lexington Avenue", phone_number: "917-262-0766", website: "https://lebotaniste.us/", image_url:"https://fraiche.io/wp-content/uploads/2021/07/Frai%CC%82che-Welcome-Le-Botaniste-NYC-Vegan-restaurant.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Vegan", price: "$$$")
r28= Restaurant.create(business_name:"All Antico", address: "225 Sullivan Street", phone_number: "212-969-9980", website: "https://www.allanticovinaionyc.com/", image_url:"https://media-cdn.tripadvisor.com/media/photo-s/27/ae/9a/b1/interior.jpg",likes: rand(1...500), google_coordinates:"",user_id: User.all.sample.id, cuisine: "Italian", price: "$")

puts "Restaurants seeded!"
puts "Seeding posts..."

140.times do
    Post.create(
        comments: Faker::Restaurant.review, 
        user_id: User.all.sample.id,
        restaurant_id: Restaurant.all.sample.id,
        likes: rand(1...500)
    )
end

puts "Posts seeded!"

puts "adding favorites"



f1= Favorite.create(user_id: User.all.sample.id, restaurant_id: r1.id)
f2= Favorite.create(user_id: u2.id, restaurant_id: r2.id)
f3= Favorite.create(user_id: User.all.sample.id, restaurant_id: r3.id)
f4= Favorite.create(user_id: u2.id, restaurant_id: r4.id)
f5= Favorite.create(user_id: User.all.sample.id, restaurant_id: r5.id)
f6= Favorite.create(user_id: u2.id, restaurant_id: r6.id)
f7= Favorite.create(user_id: User.all.sample.id, restaurant_id: r7.id)
f8= Favorite.create(user_id: u2.id, restaurant_id: r8.id)
f9= Favorite.create(user_id: User.all.sample.id, restaurant_id: r9.id)
f10= Favorite.create(user_id: u2.id, restaurant_id: r10.id)


puts "Favorites seeded!"


puts "Seeding posts complete!"