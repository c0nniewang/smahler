City.destroy_all
User.destroy_all
Genre.destroy_all
Instrument.destroy_all
JamSession.destroy_all

# USERS
user1 = User.create(username: "KatPap", email: "kat@kat.com",name: "Kat", password: "learnlovecode", is_host: false, is_musician: false)
user2 = User.create(username: "Concon", email: "hello@connie.com", name: "Connie", password: "wework", is_host: false, is_musician: false)
user3 = User.create(username: "QueenEllie", email: "ellie@ellie.com", name: "Ellie", password: "icequeen", is_host: false, is_musician: false)
user4 = User.create(username: "Erica", email: "erica@erica.com", name: "Erica", password: "stonecold", is_host: false, is_musician: false)
user5 = User.create(username: "Priyam", email: "priyam@priyam.com", name: "Priyam", password: "learnlovecode", is_host: false, is_musician: false)
user6 = User.create(username: "ErickC", email: "erick@erick.com", name: "Erick", password: "dogs", is_host: false, is_musician: false)
user7 = User.create(username: "GregZ", email: "Greg@greg.com", name: "Greg", password: "blahblah", is_host: false, is_musician: false)
user8 = User.create(username: "FirstJosh", email: "josh@josh.com", name: "Josh", password: "bass", is_host: false, is_musician: false)

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
jamsession3 = JamSession.create(title: "Cellos and Cheddar", datetime: Date.parse("2017-11-28"), description: "classical cheeses (48 different types of cheddar), classical wines, cello ferocity, come on by!", city_id: 4, genre_id: 3, host_id: 4)
jamsession4 = JamSession.create(title: "Bosa, Bosa, Bosa!", datetime: Date.parse("2018-04-03"), description: "self pity with a side of sanca", city_id: 1, genre_id: 1, host_id: 2)
jamsession5 = JamSession.create(title: "All Stevie", datetime: Date.parse("2018-2-14"), description: "Love's in need of love today! Spend your Valentine's Day with some hip cats and the greatest tunes of all time.", city_id: 5, genre_id: 8, host_id: 7)
jamsession6 = JamSession.create(title: "90's Glory", datetime: Date.parse("2018-3-17"), description: "Matchbox? Alanis? You know you wanna.", city_id: 2, genre_id: 3, host_id: 3)
jamsession7 = JamSession.create(title: "Cookin with Mr. Cook Himself", datetime: Date.parse("2018-1-14"), description: "Mowtown and mojitos! Come groove the night away.", city_id: 1, genre_id: 10, host_id: 6)
jamsession8 = JamSession.create(title: "Brown Sugar Baby.", datetime: Date.parse("2018-5-20"), description: "If D'Angelo's Brown Sugar is your go-to album, this jam is for you.", city_id: 1, genre_id: 9, host_id: 1)
jamsession9 = JamSession.create(title: "Autumn Leaves in Summer!", datetime: Date.parse("2018-6-10"), description: "Come jam on jazz classics, Adderley, Coltrane, and the gang.  My mom will make her famous lemonade, curfew pushed til 11, definitely dont wanna miss this one.", city_id: 2, genre_id: 2, host_id: 8)
jamsession10 = JamSession.create(title: "Lets just PLAY!", datetime: Date.parse("2018-2-07"), description: "If you're a musical swinger and just wanna have some fun, come on by!", city_id: 3, genre_id: 11, host_id: 5)

# INSTRUMENTJAMS
instrumentjams1 = InstrumentJam.create(instrument_id: 1, jam_session_id: 1)
instrumentjams2 = InstrumentJam.create(instrument_id: 2, jam_session_id: 1)
instrumentjams3 = InstrumentJam.create(instrument_id: 3, jam_session_id: 1)
instrumentjams4 = InstrumentJam.create(instrument_id: 5, jam_session_id: 1)
instrumentjams5 = InstrumentJam.create(instrument_id: 4, jam_session_id: 1)
instrumentjams6 = InstrumentJam.create(instrument_id: 1, jam_session_id: 2)
instrumentjams7 = InstrumentJam.create(instrument_id: 6, jam_session_id: 2)
instrumentjams8 = InstrumentJam.create(instrument_id: 8, jam_session_id: 2)
instrumentjams9 = InstrumentJam.create(instrument_id: 9, jam_session_id: 2)
instrumentjams10 = InstrumentJam.create(instrument_id: 2, jam_session_id: 3)
instrumentjams6 = InstrumentJam.create(instrument_id: 1, jam_session_id: 3)
instrumentjams7 = InstrumentJam.create(instrument_id: 6, jam_session_id: 3)
instrumentjams8 = InstrumentJam.create(instrument_id: 8, jam_session_id: 3)
instrumentjams9 = InstrumentJam.create(instrument_id: 9, jam_session_id: 3)
instrumentjams10 = InstrumentJam.create(instrument_id: 3, jam_session_id: 3)
instrumentjams6 = InstrumentJam.create(instrument_id: 1, jam_session_id: 4)
instrumentjams7 = InstrumentJam.create(instrument_id: 6, jam_session_id: 4)
instrumentjams8 = InstrumentJam.create(instrument_id: 8, jam_session_id: 4)
instrumentjams9 = InstrumentJam.create(instrument_id: 9, jam_session_id: 4)
instrumentjams10 = InstrumentJam.create(instrument_id: 4, jam_session_id: 4)
instrumentjams6 = InstrumentJam.create(instrument_id: 1, jam_session_id: 5)
instrumentjams7 = InstrumentJam.create(instrument_id: 6, jam_session_id: 5)
instrumentjams8 = InstrumentJam.create(instrument_id: 8, jam_session_id: 5)
instrumentjams9 = InstrumentJam.create(instrument_id: 9, jam_session_id: 5)
instrumentjams10 = InstrumentJam.create(instrument_id: 5, jam_session_id: 5)
instrumentjams6 = InstrumentJam.create(instrument_id: 1, jam_session_id: 6)
instrumentjams7 = InstrumentJam.create(instrument_id: 6, jam_session_id: 6)
instrumentjams8 = InstrumentJam.create(instrument_id: 8, jam_session_id: 6)
instrumentjams9 = InstrumentJam.create(instrument_id: 9, jam_session_id: 6)
instrumentjams10 = InstrumentJam.create(instrument_id: 6, jam_session_id: 6)




#
