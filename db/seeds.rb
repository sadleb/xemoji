# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Xemoji settings
testkeywords1 = ['testkeyword1', 'testkeyword2']
testkeywords2 = ['testkeyword3', 'testkeyword4']
x1 = Xemoji.create(category: 'latin', filename: 'testlatin1.png', url: 'https://www.gstatic.com/webp/gallery3/1.png', keywords: testkeywords1 )
x2 = Xemoji.create(category: 'nyc', filename: 'testnyc1.png', url: 'https://www.gstatic.com/webp/gallery3/2.png', keywords: testkeywords2 )

# Users
u1 = User.create(first_name: 'Brian', last_name: 'xTestUser1', email: 'sadler.brian+testxemoji1@gmail.com', :password => 'test1234', :password_confirmation => 'test1234')
u2 = User.create(first_name: 'Brian', last_name: 'xTestUser2', email: 'sadler.brian+testxemoji2@gmail.com', :password => 'test1234', :password_confirmation => 'test1234')

# Add Xemojis to the Users
u1.xemojis << x1
u1.xemojis << x2
u2.xemojis << x2

