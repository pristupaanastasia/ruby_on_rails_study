class AddCategoryIdToDataNews < ActiveRecord::Migration[6.0]
  def change
    add_reference :data_news, :category, foreign_key: true
  end
end
