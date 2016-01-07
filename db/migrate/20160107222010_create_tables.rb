class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :title
      t.string :giphy_url
      t.boolean :posted_to_facebook
    end
  end
end
