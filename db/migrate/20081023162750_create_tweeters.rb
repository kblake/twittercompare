class CreateTweeters < ActiveRecord::Migration

  def self.up
    create_table :tweeters do |t|
      t.string :twitter_id
      t.string :url
      t.string :name
      t.string :screen_name
      t.string :profile_image_url
      t.string :followers_count
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :tweeters
  end
end
