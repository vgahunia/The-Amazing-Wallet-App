class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first
    	t.string :last
    	t.string :email
    	t.string :phone
    	t.decimal :balance
      t.timestamps null: false
    end
  end
end
