class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.integer :pedido_id

      t.timestamps
    end
  end
end
