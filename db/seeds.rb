# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Goal.create(color: 'grey', name: 'Random goal',
            description: 'Something that is not connected with current ' \
                'goals. Are you sure, that you need to do it?!')
