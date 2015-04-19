# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


com1 = Community.create(name: 'Madrid')

h1 = com1.houses.create(address: 'Serrano 21', members: 1)
h2 = com1.houses.create(address: 'Ayala 44', members: 2)
h3 = com1.houses.create(address: 'Velazquez 5', members: 4)
h4 = com1.houses.create(address: 'Ortega y Gasset 16', members: 3)
 
c1 = h1.clients.create(name: 'Pedro', lastname: 'Fernandez', password: 'asdf')

c2 = h2.clients.create(name: 'María', lastname: 'Garcia', password: 'asdf')
c3 = h2.clients.create(name: 'Cristina', lastname: 'Ramos', password: 'asdf')

c4 = h2.clients.create(name: 'Luis', lastname: 'Alfredo', password: 'asdf')

# c4 = h3.clients.create(name: 'Luis', lastname: 'Alfredo', password: 'asdf', email: 'luisalfredo@mail.com')
# c5 = h3.clients.create(name: 'Marcos', lastname: 'Alfredo', password: 'asdf', email: 'marcosalfredo@mail.com')
# c6 = h3.clients.create(name: 'Ana', lastname: 'Jato', password: 'asdf', email: 'anajato@mail.com')
# c7 = h3.clients.create(name: 'Jana', lastname: 'Gil', password: 'asdf', email: 'janagil@mail.com')

c8 = h4.clients.create(name: 'Ursula', lastname: 'Rodriguez', password: 'asdf')
c9 = h4.clients.create(name: 'Jonas', lastname: 'Wert', password: 'asdf')
c10 = h4.clients.create(name: 'Tom', lastname: 'Gin', password: 'asdf')

com1.spaces.create(id: 11, name: 'Tenis', description: 'Pista de tenis de tierra batida. Disponible con raquetas y pelotas', type_space: 'tenis')
com1.spaces.create(id: 12, name: 'Padel A', description: 'Pista de pádel A', type_space: 'padel')
com1.spaces.create(id: 13, name: 'Padel B', description: 'Pista de pádel B', type_space: 'padel')
com1.spaces.create(id: 14, name: 'Futbol', description: 'Campo de Fútbol con césped. Vestuarios disponibles. Pelotas no.', type_space: 'futbol')
com1.spaces.create(id: 15, name: 'Ping pong', description: 'Ping Pong, raquetas y pelota disponible.', type_space: 'ping pong')
com1.spaces.create(id: 16, name: 'Futbolín', description: 'Futbolín disponible para 1 hora', type_space: 'futbolin')

c1.reservations.create(name: 'Pedro', hour: '10:00', date: Time.now.to_date, space_id: 11)
c1.reservations.create(name: 'Pedro', hour: '12:00', date: Time.now.to_date, space_id: 16)

c2.reservations.create(name: 'María', hour: '16:00', date: Time.now.to_date, space_id: 15)

c3.reservations.create(name: 'Cristina', hour: '17:00', date: Time.now.to_date, space_id: 15)
c3.reservations.create(name: 'Cristina', hour: '20:00', date: Time.now.to_date, space_id: 16)

c4.reservations.create(name: 'Luis', hour: '09:00', date: Time.now.to_date, space_id: 12)

com1.tenis_spaces.create(name: 'Serrano', address: 'Serrano 10', players: 2, soil: 'tierra', open_hour: '09:00', close_hour: '22:00')
com1.tenis_spaces.create(name: 'Ayala', address: 'Ayala 115', players: 2, soil: 'tierra', open_hour: '11:00', close_hour: '20:00')
com1.tenis_spaces.create(name: 'Nuñez de Balboa', address: 'Nuñez de Balboa 14', players: 2, soil: 'tierra', open_hour: '10:00', close_hour: '23:00')

com1.padel_spaces.create(name: 'Serrano', address: 'Serrano 10', players: 2, soil: 'tierra', open_hour: '09:00', close_hour: '22:00')
com1.padel_spaces.create(name: 'Ayala', address: 'Ayala 115', players: 2, soil: 'tierra', open_hour: '11:00', close_hour: '20:00')
com1.padel_spaces.create(name: 'Nuñez de Balboa', address: 'Nuñez de Balboa 14', players: 2, soil: 'tierra', open_hour: '10:00', close_hour: '23:00')

com1.party_spaces.create(name: 'Lagasca', address: 'Lagasca 33', capacity: 20, size: 'mediano', type_space: 'cerrado', open_hour: '09:00', close_hour: '22:00')
com1.party_spaces.create(name: 'Hermosilla', address: 'Hermosilla 55', capacity: 25, size: 'mediano', type_space: 'cerrado', open_hour: '11:00', close_hour: '20:00')
com1.party_spaces.create(name: 'Goya', address: 'Goya 14', capacity: 60, size: 'mediano', type_space: 'cerrado', open_hour: '10:00', close_hour: '23:00')
com1.party_spaces.create(name: 'Villanueva', address: 'Villanueva 33', capacity: 10, size: 'pequeño', type_space: 'abierto', open_hour: '10:00', close_hour: '23:00')
com1.party_spaces.create(name: 'Padilla', address: 'Padilla 22', capacity: 40, size: 'mediano', type_space: 'abierto', open_hour: '10:00', close_hour: '23:00')

com1.football_spaces.create(name: 'Ortega y Gasset', address: 'Ortega y Gasset 90', players: 12, soil: 'cesped', open_hour: '09:00', close_hour: '22:00')





