class CreateDamages < ActiveRecord::Migration
  def change
    create_table :damages do |t|
      t.string :type
      t.string :details
      t.string :url
      t.string :location

      t.timestamps
    end
  end
end
