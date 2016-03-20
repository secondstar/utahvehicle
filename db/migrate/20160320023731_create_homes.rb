class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.text :feature_image
      t.string :feature_name
      t.text :feature_link
      t.text :deal_of_the_day_description
      t.text :deal_of_the_day_image
      t.string :feature_two_headline
      t.text :feature_two_image
      t.text :feature_two_description
      t.text :feature_two_link
      t.text :feature_three_image
      t.string :feature_three_headline
      t.text :feature_three_description
      t.text :feature_three_link

      t.timestamps null: false
    end
  end
end
