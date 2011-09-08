class CreateServicesParts < ActiveRecord::Migration
  def self.up
    create_table :services_parts do |t|
      t.references :service
      t.references :part

      t.timestamps
    end
  end

  def self.down
    drop_table :services_parts
  end
end
