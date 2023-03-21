class CreateSites < ActiveRecord::Migration[7.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :slogan
      t.text :about

      t.timestamps
    end
  end
end
