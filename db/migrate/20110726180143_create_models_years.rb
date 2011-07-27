class CreateModelsYears < ActiveRecord::Migration
  def self.up   
   create_table :models_years,:id => false do |t|
      t.integer :model_id
      t.integer :year_id
      t.timestamps
    end
  end

  def self.down
    drop_table :models_years
  end
end
