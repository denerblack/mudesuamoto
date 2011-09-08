class CreateYears < ActiveRecord::Migration
  def self.up
    create_table :years do |t|
      t.string :year

      t.timestamps
    end
  end

  def self.down
    drop_table :years
  end
end
