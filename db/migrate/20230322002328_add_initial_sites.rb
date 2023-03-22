class AddInitialSites < ActiveRecord::Migration[7.0]
  def up
    Site.create(name: "NOMINSANG LIBRARY", slogan: "Wonderful Library!", about: "This is a library build with nominsang.")
  end
  
  def down
    Site.delete_all
  end
end
