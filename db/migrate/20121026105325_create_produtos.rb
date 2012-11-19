class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :quantidade
      t.integer :pedido_id

      t.timestamps
    end
  end
end
