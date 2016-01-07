class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :facebook_token
      t.string :avat_url
    end
  end
end
