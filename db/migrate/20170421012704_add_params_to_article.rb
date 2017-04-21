class AddParamsToArticle < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :user, foreign_key: true
    add_reference :articles, :location, foreign_key: true
  end
end
