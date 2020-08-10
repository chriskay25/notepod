# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # User.destroy_all
  # Podcast.destroy_all
  # Episode.destroy_all
  # Note.destroy_all
  # Subscription.destroy_all

  user1 = User.create(username: "chris", email: "8eskid@gmail.com", password: "kay")
  user2 = User.create(username: "mariah", email: "mariah@hotmail.com", password: "sappington")
  
  20.times do
    user = User.create(username: Faker::Internet.username, email: Faker::Internet.email, password: Faker::Internet.password)
  end 
  


  pod1 = Podcast.create(name: "Joe Rogan's Podcast")
  pod2 = Podcast.create(name: "Making Sense with Sam Harris")
  pod3 = Podcast.create(name: "This American Life")
  pod4 = Podcast.create(name: "Dan Carlin's Hardcore History")
  pod5 = Podcast.create(name: "Stuff You Should Know")
  pod6 = Podcast.create(name: "Planet Money")
  pod7 = Podcast.create(name: "Revisionist History")
  pod8 = Podcast.create(name: "Armchair Expert with Dax Shepard")
  pod9 = Podcast.create(name: "Freakonomics Radio")
  pod10 = Podcast.create(name: "Monday Morning Podcast")
  pod11 = Podcast.create(name: "Throughline")
  pod12 = Podcast.create(name: "In Our Time")
  pod13 = Podcast.create(name: "Pardon My Take")
  pod14 = Podcast.create(name: "The Generation Why Podcast")

  user1.subscriptions.create([{podcast_id: pod1.id}, {podcast_id: pod2.id}, {podcast_id: pod3.id}, {podcast_id: pod4.id}])
  user2.subscriptions.create([{podcast_id: pod3.id}, {podcast_id: pod4.id}, {podcast_id: pod5.id}, {podcast_id: pod6.id}])

  ep1 = Episode.create(title: "#1201 - William von Hippel", podcast_id: pod1.id)
  ep2 = Episode.create(title: "#1221 - Jonathan Haidt", podcast_id: pod1.id)
  ep3 = Episode.create(title: "#1250 - Johann Hari", podcast_id: pod1.id)
  ep4 = Episode.create(title: "#1259 - David Wallace-Wells", podcast_id: pod1.id)
  ep5 = Episode.create(title: "#1501 - James Lindsay", podcast_id: pod1.id)
  ep6 = Episode.create(title: "#71 - What Is Technology Doing To Us", podcast_id: pod2.id)
  ep7 = Episode.create(title: "#130 - Universal Basic Income", podcast_id: pod2.id)
  ep8 = Episode.create(title: "#140 - Burning Down The Fourth Estate", podcast_id: pod2.id)
  ep9 = Episode.create(title: "#145 - The Information War", podcast_id: pod2.id)
  ep10 = Episode.create(title: "#146 - Digital Capitalism", podcast_id: pod2.id)
  ep11 = Episode.create(title: "#150 - The Map Of Understanding", podcast_id: pod2.id)
  ep12 = Episode.create(title: "#151 - Will We Destroy The Future?", podcast_id: pod2.id)
  ep13 = Episode.create(title: "#152 - The Trouble With Facebook", podcast_id: pod2.id)
  ep14 = Episode.create(title: "Ep. I", podcast_id: pod3.id)
  ep15 = Episode.create(title: "Ep. II", podcast_id: pod3.id)
  ep16 = Episode.create(title: "Ep. III", podcast_id: pod3.id)
  ep17 = Episode.create(title: "Ep. IV", podcast_id: pod3.id)

  note1 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 2), user_id: user1.id, episode_id: ep1.id)
  note2 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 3), user_id: user1.id, episode_id: ep1.id)
  note3 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 1), user_id: user1.id, episode_id: ep2.id)
  note4 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 3), user_id: user1.id, episode_id: ep2.id)
  note5 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 2), user_id: user1.id, episode_id: ep3.id)
  note6 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 4), user_id: user1.id, episode_id: ep3.id)
  note7 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 2), user_id: user1.id, episode_id: ep3.id)
  note8 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 1), user_id: user1.id, episode_id: ep4.id)
  note9 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 2), user_id: user2.id, episode_id: ep14.id)
  note10 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 3), user_id: user2.id, episode_id: ep15.id)
  note11 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 1), user_id: user2.id, episode_id: ep16.id)
  note12 = Note.create(content: Faker::Lorem.paragraph(sentence_count: 4), user_id: user2.id, episode_id: ep17.id)


