class ChangeColumnsNullToNotNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :posts, :name, false
    change_column_null :posts, :content, false
    change_column_null :ingredients, :name, false
  end
end
