class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.text   :description
      t.string :genre
      t.string :platform
      t.string :developer
      t.string :publisher
      t.integer :user_id
    end
  end
end
