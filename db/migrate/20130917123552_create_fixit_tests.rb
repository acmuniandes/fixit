class CreateFixitTests < ActiveRecord::Migration
  def change
    create_table :fixit_tests do |t|
      t.string :type
      t.string :details
      t.string :email
      t.string :location
      t.string :picture

      t.timestamps
    end
  end
end
