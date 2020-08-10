# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: "user1", email: "user1@user1.com", password: "password1")
user2 = User.create(username: "user2", email: "user2@user2.com", password: "password2")
user3 = User.create(username: "user3", email: "user3@user3.com", password: "password3")
user4 = User.create(username: "user4", email: "user4@user4.com", password: "password4")
user5 = User.create(username: "mariah", email: "user51@user5.com", password: "sappington")
user6 = User.create(username: "chris", email: "8eskid@gmail.com", password: "kay")

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

sub4 = Subscription.create(user_id: user5.id, podcast_id: pod5.id)

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

ep12 = Episode.create(title: "Uno", podcast_id: pod4.id)
ep13 = Episode.create(title: "Dos", podcast_id: pod4.id)

ep14 = Episode.create(title: "Ep. I", podcast_id: pod5.id)
ep15 = Episode.create(title: "Ep. II", podcast_id: pod5.id)
ep16 = Episode.create(title: "Ep. III", podcast_id: pod5.id)
ep17 = Episode.create(title: "Ep. IV", podcast_id: pod5.id)

note1 = Note.create(content: "First note's contents, blah blah blah.", user_id: user6.id, episode_id: ep1.id)
note2 = Note.create(content: "Second note's contents, blah blah blah.", user_id: user6.id, episode_id: ep1.id)
note3 = Note.create(content: "Third note's contents, blah blah blah.", user_id: user6.id, episode_id: ep2.id)
note4 = Note.create(content: "Fourth note's contents, blah blah blah.", user_id: user6.id, episode_id: ep2.id)
note5 = Note.create(content: "Fifth note's contents, blah blah blah.", user_id: user6.id, episode_id: ep3.id)
note6 = Note.create(content: "Sixth note's contents, blah blah blah.", user_id: user6.id, episode_id: ep3.id)
note7 = Note.create(content: "Seventh note's contents, blah blah blah.", user_id: user6.id, episode_id: ep3.id)
note8 = Note.create(content: "Eighth note's contents, blah blah blah.", user_id: user6.id, episode_id: ep4.id)

note9 = Note.create(content: "Ninth note's contents, blah blah blah.", user_id: user5.id, episode_id: ep14.id)
note10 = Note.create(content: "Tenth note's contents, blah blah blah.", user_id: user5.id, episode_id: ep15.id)
note11 = Note.create(content: "Eleventh note's contents, blah blah blah.", user_id: user5.id, episode_id: ep16.id)
note12 = Note.create(content: "Twelfth note's contents, blah blah blah.", user_id: user5.id, episode_id: ep17.id)


