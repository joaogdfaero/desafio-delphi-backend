class CreateCeps < ActiveRecord::Migration[7.0]
  def change
    create_table :ceps do |t|
      t.string :cep
      t.string :uf
      t.string :bairro
      t.string :cidade
      t.string :logradouro

      t.timestamps
    end
  end
end
