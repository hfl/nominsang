class CreateDissertations < ActiveRecord::Migration[7.0]
  def change
    create_table :dissertations do |t|
      t.string :title
      t.string :subtitle
      t.string :author
      t.string :teacher
      t.text :abstract
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
