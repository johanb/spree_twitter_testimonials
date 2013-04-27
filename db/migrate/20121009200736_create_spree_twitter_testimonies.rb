class CreateSpreeTwitterTestimonies < ActiveRecord::Migration
  def change
    create_table :spree_twitter_testimonies do |t|
      t.string :twitter_handle
      t.string :content
      t.string :author_name
      t.timestamps
    end
    add_column :spree_twitter_testimonies, :tweet_id, :bigint
    add_index :spree_twitter_testimonies, :tweet_id, unique: true
  end
end