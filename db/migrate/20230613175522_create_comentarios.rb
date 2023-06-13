class CreateComentarios < ActiveRecord::Migration[7.0]
  def change
    create_table :comentarios do |t|
      t.references :user, null: false, foreign_key: true
      t.references :publication, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
