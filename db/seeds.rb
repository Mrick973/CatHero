Booking.delete_all
Flat.delete_all
Animal.delete_all
User.delete_all


maria = User.create!(email: 'maria@gmail.com', phone: '555-5555', name: 'Maria', password: 'password')
pedro = User.create!(email: 'pedro@gmail.com', phone: '352-5555', name: 'Pedro', password: 'password')
joao = User.create!(email: 'joao@gmail.com', phone: '555-5556', name: 'João' , password: 'password')
joana = User.create!(email: 'joana@gmail.com', phone: '555-5558', name: 'Joana', password: 'password')
lucia = User.create!(email: 'lucia@gmail.com', phone: '555-5559', name: 'Lucia', password: 'password')


floquinho = Animal.create!(species: 'Persa', name: 'Floquinho', user: maria )
biruta = Animal.create!(species: 'Siamês', name: 'Biruta', user: joao )
bela = Animal.create!(species: 'Ragdoll', name: 'Bela', user: joana)
cherry = Animal.create!(species: 'Maine Coon', name: 'Cherry', user: lucia)

f1 = Flat.create!(description:'Meu apartamento tem 60 metros. Aposto que ele vai adorar ser nosso hóspede!', address:'Rua Pedralva, 171, alto de pinheiro, São Paulo', user: maria, remote_photo_url: 'http://res.cloudinary.com/ddtxrl2us/image/upload/v1533315342/quao3xxjaxcqbwy9dvic.jpg')
f2 = Flat.create!(description:'Ter espaço externo para correr, tomar sol, brincar, acesso a todos os cômodos da casa, passeios, muito carinho e amor.', address:'Rua Mourato Coelho, 1404, São Paulo', user: joao, remote_photo_url: "http://res.cloudinary.com/ddtxrl2us/image/upload/v1533315428/eh5hostq7suyotsbiqeo.jpg")
f3 = Flat.create!(description:'Moramos num apartamento pequeno, porém de cômodos espaçosos e os acessos são liberados a todos os ambientes! ', address:'rua tabapua, 542, itaim bibi, São Paulo', user: joana, remote_photo_url: "https://res.cloudinary.com/ddtxrl2us/image/upload/v1533315476/vrgxsue9js8tgbd5owwf.jpg")
f4 = Flat.create!(description:'Ele/Ela teria dois amiguinhos para brincar! São super bem educados e ficariam super felizes de ter mais companhia :) ', address:'Rua Pedroso alvarenga, 420, itaim bibi, São Paulo', user: lucia, remote_photo_url: "https://res.cloudinary.com/ddtxrl2us/image/upload/v1533315545/jcps446hyhsvfuuo5z3m.jpg")


Booking.create!(status: true, start_date: Date.new(2018,7,1), end_date: Date.new(2018,8,1), animal: floquinho, flat: f1)
Booking.create!(status: true, start_date: Date.new(2018,7,2), end_date: Date.new(2018,8,25), animal: biruta, flat: f2)
Booking.create!(status: true, start_date: Date.new(2018,7,3), end_date: Date.new(2018,8,1), animal: bela, flat: f3)

