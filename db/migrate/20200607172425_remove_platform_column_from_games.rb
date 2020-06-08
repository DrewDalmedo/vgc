class RemovePlatformColumnFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :platform
  end
end
