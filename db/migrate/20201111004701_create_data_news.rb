class CreateDataNews < ActiveRecord::Migration[6.0]
  def change
    create_table :data_news do |t|
      t.string :news_name
      t.string :news_desk
      t.timestamps
      t.belongs_to :category, optional: true
      #t.has_one_attached :image_news
    end
  end
end
