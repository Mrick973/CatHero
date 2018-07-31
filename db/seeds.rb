# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Maria = User.create!(email: 'abc@gmail.com', phone: '555-5555', name: 'Maria', address: 'Rua ABC, 123', description: 'Mussum Ipsum, cacilds vidis litro abertis', password: 'hemrickdd')
Maria.save
Joao = User.create!(email: 'wsx@gmail.com', phone: '555-5556', name: 'João' , address: 'Rua XYZ, 123', description: 'Posuere libero varius', password: 'hemrickdd')
Joao.save
Paulo = User.create!(email: 'edc@gmail.com', phone: '555-5557', name: 'Paulo', address: 'Rua EDC, 123', description: 'Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi.', password: 'hemrickdd')
Paulo.save
Joana = User.create!(email: 'rfv@gmail.com', phone: '555-5558', name: 'Joana', address: 'Rua HYN, 123', description: 'Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis', password: 'hemrickdd')
Joana.save
Lucia = User.create!(email: 'tgb@gmail.com', phone: '555-5559', name: 'Lucia', address: 'Rua OLP, 123', description: 'Sed non consequat odio', password: 'hemrickdd')
Lucia.save


Floquinho = Animal.create!(species: 'Persa', name: 'Floquinho', user_id: '1')
Biruta = Animal.create!(species: 'Siamês', name: 'Biruta', user_id: '2')
Bela = Animal.create!(species: 'Ragdoll', name: 'Bela', user_id: '3')
Cherry = Animal.create!(species: 'Maine Coon', name: 'Cherry', user_id: '4')

F1 = Flat.create!(description:'Mussum Ipsum, cacilds vidis litro abertis.', user_id: '1')
F2 = Flat.create!(description:'Si num tem leite então bota uma pinga aí cumpadi', user_id: '2')
F3 = Flat.create!(description:'Toma um mé que o mundo vai girarzis!', user_id: '3')
F4 = Flat.create!(description:'Diuretics paradis num copo é motivis de denguis.', user_id: '4')

Floquinho.user_id = Maria.id 
F1.user_id = Maria.id 
Floquinho.save
F1.save

Biruta.user_id = Joao.id 
F2.user_id = Joao.id 
Biruta.save
F2.save

Bela.user_id = Paulo.id 
F3.user_id = Paulo.id 
Bela.save
F3.save

Cherry.user_id = Joana.id
F4.user_id = Joana.id 
Cherry.save
F4.save