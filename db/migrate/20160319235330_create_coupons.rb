class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :title
      t.string :value
      t.string :code
      t.belongs_to :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
