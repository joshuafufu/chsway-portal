class AddTitleBodyAndPublishdateToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :title, :string
    add_column :ideas, :body, :text
    add_column :ideas, :published_at, :datetime
  end
end
