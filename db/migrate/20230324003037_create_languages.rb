class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.string :title
      t.string :code
      t.text :about

      t.timestamps
    end
  end
end
