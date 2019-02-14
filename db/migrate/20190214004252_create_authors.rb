class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :url
      t.string :profile_image_url

      t.timestamps
    end
  end
end
