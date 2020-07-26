# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: "user1", password: "password1")
user2 = User.create(username: "user2", password: "password2")
user3 = User.create(username: "user3", password: "password3")
user4 = User.create(username: "user4", password: "password4")
user5 = User.create(username: "user5", password: "password5")
user6 = User.create(username: "chris", password: "kay")

pod1 = Podcast.create(name: "First Pod")
pod2 = Podcast.create(name: "Second Pod")
pod3 = Podcast.create(name: "Third Pod")
pod4 = Podcast.create(name: "Fourth Pod")
pod5 = Podcast.create(name: "Fifth Pod")
pod6 = Podcast.create(name: "Sixth Pod")
pod7 = Podcast.create(name: "Seventh Pod")
pod8 = Podcast.create(name: "Eighth Pod")
pod9 = Podcast.create(name: "Ninth Pod")
pod10 = Podcast.create(name: "Tenth Pod")

sub1 = Subscription.create(user_id: user6.id, podcast_id: pod1.id)
sub2 = Subscription.create(user_id: user6.id, podcast_id: pod2.id)
sub3 = Subscription.create(user_id: user6.id, podcast_id: pod3.id)

ep1 = Episode.create(title: "Episode 1", podcast_id: pod1.id)
ep2 = Episode.create(title: "Episode 2", podcast_id: pod1.id)
ep3 = Episode.create(title: "Episode 3", podcast_id: pod1.id)
ep4 = Episode.create(title: "Episode 4", podcast_id: pod1.id)
ep5 = Episode.create(title: "Episode 5", podcast_id: pod1.id)

ep6 = Episode.create(title: "Ep1", podcast_id: pod2.id)
ep7 = Episode.create(title: "Ep2", podcast_id: pod2.id)
ep8 = Episode.create(title: "Ep3", podcast_id: pod2.id)
ep9 = Episode.create(title: "Ep4", podcast_id: pod2.id)

ep10 = Episode.create(title: "Number 1", podcast_id: pod3.id)
ep11 = Episode.create(title: "Number 2", podcast_id: pod3.id)