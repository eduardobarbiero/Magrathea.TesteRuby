class AddIntegrationIdToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :integration_id, :string, unique: true
  end
end
