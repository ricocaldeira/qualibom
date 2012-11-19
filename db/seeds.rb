# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pedido = Pedido.create!
pedido.pessoa = Pessoa.create!(nome: "Ricardo", email: "ricardo@gmail.com", telefone: "81359920")
pedido.produtos << Produto.create!(nome: "qualibom_standard", quantidade: 42)
pedido.produtos << Produto.create!(nome: "qualibom_premium", quantidade: 24)
pedido.produtos << Produto.create!(nome: "bomdemais_premium", quantidade: 12)

pedido = Pedido.create!
pedido.pessoa = Pessoa.create!(nome: "Marcelo", email: "marcelo@gmail.com", telefone: "81544212")
pedido.produtos << Produto.create!(nome: "qualibom_premium", quantidade: 100)
pedido.produtos << Produto.create!(nome: "bomdemais_premium", quantidade: 256)

