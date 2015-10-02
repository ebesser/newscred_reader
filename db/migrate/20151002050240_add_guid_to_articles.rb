class AddGuidToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :guid, :string
  end
end
