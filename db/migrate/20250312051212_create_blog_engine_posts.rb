class CreateBlogEnginePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :blog_engine_posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
