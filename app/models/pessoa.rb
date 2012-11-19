class Pessoa < ActiveRecord::Base
  attr_accessible :email, :nome, :telefone

  validates :nome    , presence: true
  validates :email   , presence: true
  validates :telefone, presence: true

  belongs_to :pedido
end