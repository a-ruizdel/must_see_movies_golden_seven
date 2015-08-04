class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :actor_name
      t.text :actor_bio
      t.string :actor_dob
      t.string :actor_image_url

      t.timestamps null: false
    end
  end
end
