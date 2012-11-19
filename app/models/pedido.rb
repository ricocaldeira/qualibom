class Pedido < ActiveRecord::Base
  attr_accessible :pessoa_attributes, :produtos_attributes
  
  has_one :pessoa
  has_many :produtos

  accepts_nested_attributes_for :pessoa, :produtos, allow_destroy: true
end