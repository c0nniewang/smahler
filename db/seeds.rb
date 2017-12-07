City.destroy_all
User.destroy_all
Genre.destroy_all
Instrument.destroy_all
JamSession.destroy_all


user1 = User.create(username: "KatPap", email: "kat@kat.com",name: "Kat", password: "learnlovecode", is_host: false, is_musician: false)
user2 = User.create(username: "Concon", email: "hello@connie.com", name: "Connie", password: "wework", is_host: false, is_musician: false)
user3 = User.create(username: "QueenEllie", email: "ellie@ellie.com", name: "Ellie", password: "icequeen", is_host: false, is_musician: false)
user4 = User.create(username: "Erica", email: "erica@erica.com", name: "Erica", password: "stonecold", is_host: false, is_musician: false)
user5 = User.create(username: "Priyam", email: "priyam@priyam.com", name: "Priyam", password: "learnlovecode", is_host: false, is_musician: false)
user6 = User.create(username: "ErickC", email: "erick@erick.com", name: "Erick", password: "dogs", is_host: false, is_musician: false)
user7 = User.create(username: "GregZ", email: "Greg@greg.com", name: "Greg", password: "blahblah", is_host: false, is_musician: false)
user8 = User.create(username: "FirstJosh", email: "josh@josh.com", name: "Josh", password: "bass", is_host: false, is_musician: false)

#CITIES
city1 = City.create(name:"New York City")
city2 = City.create(name:"Chicago")
city3 = City.create(name:"San Francisco")
city4 = City.create(name:"Austin")
city5 = City.create(name:"Boston")

# GENRES
genre1 = Genre.create(name: "Jazz")
genre2 = Genre.create(name: "Classical")
genre3 = Genre.create(name: "Alternative Rock")
genre4 = Genre.create(name: "Hip Hop")
genre5 = Genre.create(name: "EDM")
genre6 = Genre.create(name: "Folk")
genre7 = Genre.create(name: "Classic Rock")
genre8 = Genre.create(name: "Funk")
genre9 = Genre.create(name: "R & B")
genre10 = Genre.create(name: "Motown")
genre11 = Genre.create(name: "See Where The Night Leads Us")

# INSTRUMENTS
instrument1 = Instrument.create(name: "Voice")
instrument2 = Instrument.create(name: "Violin")
instrument3 = Instrument.create(name: "Piano")
instrument4 = Instrument.create(name: "Bass")
instrument5 = Instrument.create(name: "Auxiliary Percussion")
instrument6 = Instrument.create(name: "Drums")
instrument7 = Instrument.create(name: "Guitar")
instrument8 = Instrument.create(name: "Saxophone")
instrument9 = Instrument.create(name: "Trumpet")
instrument10 = Instrument.create(name: "Trombone")





# JAM SESSIONS
jamsession1 = JamSession.create(title: "Wine & Whines", datetime: Date.parse("2017-8-28"), description: "so much wine", city_id: 1, genre_id: 2, host_id: 1)
jamsession2 = JamSession.create(title: "Booze & Blues", datetime: Date.parse("2017-10-28"), description: "self pity with a side of sanca", city_id: 1, genre_id: 1, host_id: 2)
