class CreateUsersCats < ActiveRecord::Migration[6.0]
  def change
    create_table :users_cats do |t|
      t.belongs_to :category
      t.belongs_to :user
      t.timestamps
    end
  end
end
