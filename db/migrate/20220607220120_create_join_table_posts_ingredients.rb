class CreateJoinTablePostsIngredients < ActiveRecord::Migration[7.0]
  def change
    create_join_table :posts, :ingredients do |t|
       t.index [:post_id, :ingredient_id]
       t.index [:ingredient_id, :post_id]
    end
  end
end
