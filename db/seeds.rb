# USERS
user1 = User.create(name: "Kat", password: "learnlovecode", is_host: true, is_musician: true)
user2 = User.create(name: "Connie", password: "wework", is_host: true, is_musician: true)
user3 = User.create(name: "Ellie", password: "icequeen", is_host: false, is_musician: true)
user4 = User.create(name: "Erica", password: "stonecold", is_host: false, is_musician: true)
user5 = User.create(name: "Priyam", password: "learnlovecode", is_host: true, is_musician: false)
user6 = User.create(name: "Erick", password: "dogs", is_host: true, is_musician: true)
user7 = User.create(name: "Greg", password: "blahblah", is_host: true, is_musician: true)
user8 = User.create(name: "Josh", password: "bass", is_host: true, is_musician: true)

# CITIES
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

# INSTRUMENTS
instrument1 = Instrument.create(name: "Voice")
instrument2 = Instrument.create(name: "Violin")
instrument3 = Instrument.create(name: "Piano")
instrument4 = Instrument.create(name: "Bass")
instrument5 = Instrument.create(name: "Percussion")




# JAM SESSIONS
jamsession1 = JamSession.create(title: "Wine & Whines", datetime: Date.parse("2017-8-28"), description: "so much wine", city_id: 1, genre_id: 2, host_id: 1)
jamsession2 = JamSession.create(title: "Booze & Blues", datetime: Date.parse("2017-10-28"), description: "self pity with a side of sanca", city_id: 1, genre_id: 1, host_id: 2)
