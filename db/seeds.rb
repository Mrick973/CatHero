Booking.delete_all
Flat.delete_all
Animal.delete_all
User.delete_all


maria = User.create!(email: 'abc@gmail.com', phone: '555-5555', name: 'Maria', password: 'password')
pedro = User.create!(email: 'pedro@gmail.com', phone: '352-5555', name: 'Pedro', password: 'password')
joao = User.create!(email: 'wsx@gmail.com', phone: '555-5556', name: 'João' , password: 'password')
joana = User.create!(email: 'rfv@gmail.com', phone: '555-5558', name: 'Joana', password: 'password')
lucia = User.create!(email: 'tgb@gmail.com', phone: '555-5559', name: 'Lucia', password: 'password')


floquinho = Animal.create!(species: 'Persa', name: 'Floquinho', user: maria )
biruta = Animal.create!(species: 'Siamês', name: 'Biruta', user: joao )
bela = Animal.create!(species: 'Ragdoll', name: 'Bela', user: joana)
cherry = Animal.create!(species: 'Maine Coon', name: 'Cherry', user: lucia)

f1 = Flat.create!(description:'Mussum Ipsum, cacilds vidis litro abertis.', address:'Rua Pedralva, 171, alto de pinheiro, São Paulo', user: maria, remote_photo_url: 'http://res.cloudinary.com/ddtxrl2us/image/upload/c_fill,h_100,w_170/v1533238811/wclcxfrkkrtromtqxs77.jpg')
f2 = Flat.create!(description:'Si num tem leite então bota uma pinga aí cumpadi', address:'Rua Mourato Coelho, 1404, São Paulo', user: joao, remote_photo_url: "http://res.cloudinary.com/ddtxrl2us/image/upload/v1533237242/cat_hero/maldivas.jpg")
f3 = Flat.create!(description:'Toma um mé que o mundo vai girarzis!', address:'rua tabapua, 542, itaim bibi, São Paulo', user: joana, remote_photo_url: "https://res.cloudinary.com/ddtxrl2us/image/upload/v1533237242/cat_hero/download_1.jpg")
f4 = Flat.create!(description:'Diuretics paradis num copo é motivis de denguis.', address:'Rua Pedroso alvarenga, 420, itaim bibi, São Paulo', user: lucia, remote_photo_url: "https://res.cloudinary.com/ddtxrl2us/image/upload/v1533237242/cat_hero/download.jpg")
f5 = Flat.create!(description:'Diuretics paradis nm copo é motivis de denguis.', address:'Av. Paulista, 1000, são paulo', user: maria, remote_photo_url: "https://res.cloudinary.com/ddtxrl2us/image/upload/v1533237242/cat_hero/beco.jpg")


Booking.create!(status: true, start_date: Date.new(2018,9,1), end_date: Date.new(2018,10,1), animal: floquinho, flat: f1)
Booking.create!(status: true, start_date: Date.new(2018,9,2), end_date: Date.new(2018,9,25), animal: biruta, flat: f2)
Booking.create!(status: true, start_date: Date.new(2018,9,3), end_date: Date.new(2018,11,1), animal: bela, flat: f3)

