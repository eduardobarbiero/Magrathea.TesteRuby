class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :hashtag, foreign_key: true
      t.references :author, foreign_key: true
      t.string :text
      t.datetime :publication

      t.timestamps
    end
  end
end
