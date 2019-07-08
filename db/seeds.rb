# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "Mansa Musa", password_digest: "qwerty")
u2 = User.create(name: "Michael Jordan", password_digest: "asdfgh")
u3 = User.create(name: "Michael Jackson", password_digest: "zxcvbn")
u4 = User.create(name: "Manchu Pichu", password_digest: "123456")
u5 = User.create(name: "Barack Obama", password_digest: "lkjhgf")

p1 = Playlist.create(name: "The Conquest", user_id: u1.id)
p2 = Playlist.create(name: "Dunking", user_id: u2.id)
p3 = Playlist.create(name: "King of Pop", user_id: u3.id)
p4 = Playlist.create(name: "Peruviuan flutes", user_id: u4.id)
p5 = Playlist.create(name: "The Diplomatic Politician", user_id: u5.id)

s1 = Song.create(name: "Jump", album: "Van Halen", genre: "rock")
s2 = Song.create(name: "I believe I can fly", album: "r-kelly", genre: "rap")
s3 = Song.create(name: "beat it", album: "thriller", genre: "pop")
s4 = Song.create(name: "tatanka", album: "Chief Sitting Bull", genre: "Tent Music")
s5 = Song.create(name: "Signed Sealed Delivered", album: "Stevie Wonder", genre: "pop")

ps1 = Playsong.create(playlist_id: p1.id, song_id: s1.id)
ps2 = Playsong.create(playlist_id: p2.id, song_id: s2.id)
ps3 = Playsong.create(playlist_id: p3.id, song_id: s3.id)
ps4 = Playsong.create(playlist_id: p4.id, song_id: s4.id)
ps5 = Playsong.create(playlist_id: p5.id, song_id: s5.id)
