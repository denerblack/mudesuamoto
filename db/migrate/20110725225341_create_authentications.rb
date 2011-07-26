class CreateAuthentications < ActiveRecord::Migration
  def self.up
    create_table :authentications do |t|
      t.string :provider
      t.string :uid
      t.string :image
      t.string :oauth_token
      t.string :oauth_token_secret

      t.timestamps
    end
  end

  def self.down
    drop_table :authentications
  end
end
