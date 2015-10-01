class AddSearchToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :search_name, :string
  end
end
