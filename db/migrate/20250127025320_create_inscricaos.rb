class CreateInscricaos < ActiveRecord::Migration[8.0]
  def change
    create_table :inscricaos do |t|
      t.string :nome
      t.string :alcunha
      t.string :regiao
      t.string :contato
      t.date :data_nascimento

      t.timestamps
    end
  end
end
