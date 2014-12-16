# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create({
	name: 'Lucas Limeira',
	email: 'lucasalveslm@gmail.com',
	password: '12345678',
	address: 'anything',
	skype: 'la.limeira',
	facebook: 'lucasalveslm',
	telephone: '00000000'	
});