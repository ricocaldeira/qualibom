class Produto < ActiveRecord::Base
  attr_accessible :nome, :quantidade

  PRODUTOS = ["Qualibom 17 itens", "Qualibom 25 itens", "Bomdemais 11 itens", "Bomdemais 20 itens"]

  validates :nome      , inclusion: { in: PRODUTOS, message: "deve estar incluso na lista" }
  validates :quantidade, presence: true

  belongs_to :pedido
end