class CreateExperts < ActiveRecord::Migration[7.0]
  def change
    create_table :experts do |t|
      t.string :name
      t.string :alias_name
      t.string :sex
      t.string :nation
      t.string :birthday
      t.string :deathday
      t.string :occupation
      t.text :biographical_text

      t.timestamps
    end
  end
end
