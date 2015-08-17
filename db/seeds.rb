# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Exhibitor.delete_all
Room.delete_all
Category.delete_all
InfoText.delete_all
SlideImage.delete_all
Schedule.delete_all
User.delete_all

Category.create!(id:1,title: 'Utbildning')
Category.create!(id:2,title: 'Arbete')
Category.create!(id:3,title: 'Utomlands')
Category.create!(id:4,title: 'Övrigt')

Room.create!(id:1,title: 'Amazonas')
Room.create!(id:2,title: 'Donau')
Room.create!(id:3,title: 'Nilen')
Room.create!(id:4,title: 'Rio Grande')
Room.create!(id:5,title: 'Zambesi')




Schedule.create(time:'09:00',exhibitors_id:1, rooms_id:1)
Schedule.create(time:'10:00',exhibitors_id:2, rooms_id:1)
Schedule.create(time:'11:00',exhibitors_id:3, rooms_id:1)
Schedule.create(time:'13:00',exhibitors_id:4, rooms_id:1)
Schedule.create(time:'14:00',exhibitors_id:5, rooms_id:1)
Schedule.create(time:'15:00',exhibitors_id:6, rooms_id:1)

Schedule.create(time:'09:00',exhibitors_id:7, rooms_id:2)
Schedule.create(time:'10:00',exhibitors_id:8, rooms_id:2)
Schedule.create(time:'11:00',exhibitors_id:9, rooms_id:2)
Schedule.create(time:'13:00',exhibitors_id:10, rooms_id:2)
Schedule.create(time:'14:00',exhibitors_id:11, rooms_id:2)
Schedule.create(time:'15:00',exhibitors_id:12, rooms_id:2)

Schedule.create(time:'09:00',exhibitors_id:13, rooms_id:3)
Schedule.create(time:'10:00',exhibitors_id:14, rooms_id:3)
Schedule.create(time:'11:00',exhibitors_id:15, rooms_id:3)
Schedule.create(time:'13:00',exhibitors_id:16, rooms_id:3)
Schedule.create(time:'14:00',exhibitors_id:17, rooms_id:3)
Schedule.create(time:'15:00',exhibitors_id:18, rooms_id:3)

Schedule.create(time:'09:00',exhibitors_id:19, rooms_id:4)
Schedule.create(time:'10:00',exhibitors_id:20, rooms_id:4)
Schedule.create(time:'11:00',exhibitors_id:21, rooms_id:4)
Schedule.create(time:'13:00',exhibitors_id:22, rooms_id:4)
Schedule.create(time:'14:00',exhibitors_id:23, rooms_id:4)
Schedule.create(time:'15:00',exhibitors_id:24, rooms_id:4)

Schedule.create(time:'09:00',exhibitors_id:25, rooms_id:5)
Schedule.create(time:'10:00',exhibitors_id:26, rooms_id:5)







InfoText.create!(title: 'Plugg, jobb eller resa - mässan som hjälper dig hitta vägen',
                 content: 'Torsdag 24 Mars 2014
                          Cus voles veriatae quunt vellore ctatur, eiciis reres eum andanducium eicia quasperum aut as id et, sequi dolent, quo et des dollorepero id mos et lam rate si comnis
                          vit quam que enim laborepuda voluptatio bero tem a doluptatio odis eos reperum denis eossin nos eossin parum simus ut auta dolorro dis rempel mincte post, cus autatiae ant eos eost eum exerio quo occum quia vendae porum arum int.
                          Gent, eratiunt ulpa porectur?
                          Bitibus cimperum es nos dis accume landani tatur, consent labo.
                          Välkommen!')




SlideImage.create!(image_url1: 'volvo.jpg', image_url2: 'army.jpg', image_url3: 'BTH.jpg')