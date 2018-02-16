class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.integer :type
      t.string :name

      t.timestamps
    end
  end
end
