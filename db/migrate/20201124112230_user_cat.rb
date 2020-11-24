class UserCat < ActiveRecord::Migration[6.0]
  def change
    create_table :user_cat do |t|
    t.bigint "category_id"
    t.bigint "user_id"
    end
  end
end
