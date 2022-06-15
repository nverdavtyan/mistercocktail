class ChangeColumnImagedata < ActiveRecord::Migration[7.0]
  def change
    def change
      change_column_null :posts, :image_data, false
    end
  end
end
