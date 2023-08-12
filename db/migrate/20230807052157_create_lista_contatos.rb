class CreateListaContatos < ActiveRecord::Migration[7.0]
  def change
    create_table :lista_contatos do |t|
      t.string :Primeiro_Nome
      t.string :Ultimo_Nome
      t.string :Email
      t.string :Telefone

      t.timestamps
    end
  end
end
