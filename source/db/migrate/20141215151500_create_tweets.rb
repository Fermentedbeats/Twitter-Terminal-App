require_relative '../../config/app'

class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string    :tweet

      t.timestamps
    end
  end
end
