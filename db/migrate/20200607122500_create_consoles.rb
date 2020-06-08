class CreateConsoles < ActiveRecord::Migration
  def change
    '''
    what does a console have?
    name
    generation?
    brand
    company / manufacturer
    belongs_to user (user_id)
    edition (standard, collectors edition, etc)
    many games (not needed in migration)
    '''
    create_table :consoles do |t|
      t.string :name
      t.string :edition
      t.string :brand
      t.string :company
      t.integer :user_id
    end
    '''
    a game should have the ability to have many consoles
    since many games are released on many platforms
    '''
  end
end
