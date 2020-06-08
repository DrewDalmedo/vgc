class AddConsoleIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :console_id, :integer
  end
end
