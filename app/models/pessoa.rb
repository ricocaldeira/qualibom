class Pessoa < ActiveRecord::Base
  attr_accessible :email, :nome, :telefone

  validates :nome    , presence: true
  validates :telefone, presence: true
  validates :email,
            :format => {
              :with    => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i,
              :message => "invalido" }

  belongs_to :pedido
end