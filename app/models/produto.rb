class Produto < ActiveRecord::Base
  attr_accessible :nome, :quantidade

  PRODUTOS = ["Qualibom standard", "Qualibom premium", "Bomdemais standard", "Bomdemais premium"]

  validates :nome      , inclusion: { in: PRODUTOS, message: "deve estar incluso na lista" }
  validates :quantidade, presence: true

  belongs_to :pedido
end