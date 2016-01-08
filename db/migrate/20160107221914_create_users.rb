class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :facebook_token
      t.string :avat_url
      t.string :provider
      t.string :uid
      t.string :name
    end
  end
end
