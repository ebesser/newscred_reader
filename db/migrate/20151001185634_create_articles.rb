class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :description
      t.text :title
      t.text :author
      t.text :publish_date
      t.text :source
      t.text :featured_image
      t.text :canonical_link
      t.integer :search_id

      t.timestamps
    end
  end
end
