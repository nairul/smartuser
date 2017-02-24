class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
    	t.string :username
     	t.string :password
     	t.string :email
     	t.references :app, index: true, foreign_key: true
    end
  end
end
