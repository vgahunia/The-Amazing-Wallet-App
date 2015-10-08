class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
    	t.integer :account
    	t.string :type
    	t.integer :month
    	t.integer :year
      t.timestamps null: false
    end
  end
end
