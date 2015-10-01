class RemoveSearchIdFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :search_id, :integer
  end
end
