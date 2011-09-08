class CreateModelsYears < ActiveRecord::Migration
  def self.up
    create_table :models_years do |t|
      t.references :model, :year
      t.timestamps
    end
  end

  def self.down
    drop_table :models_years
  end
end
