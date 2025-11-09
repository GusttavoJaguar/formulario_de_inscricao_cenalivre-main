class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :conteudo
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
