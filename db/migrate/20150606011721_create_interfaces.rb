class CreateInterfaces < ActiveRecord::Migration
  def change
    create_table :interfaces do |t|
      t.boolean :read
      t.string :user
      t.string :book

      t.timestamps
    end
  end
end
