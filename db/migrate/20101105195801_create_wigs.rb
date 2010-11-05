class CreateWigs < ActiveRecord::Migration
  def self.up
    create_table :wigs do |t|
      t.string :color
      t.string :style

      t.timestamps
    end
  end

  def self.down
    drop_table :wigs
  end
end
