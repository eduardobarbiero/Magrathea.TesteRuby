class AddIntegrationIdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :integration_id, :string
  end
end
