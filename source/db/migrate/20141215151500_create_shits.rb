class CreateShits < ActiveRecord::Migration
  def change
    create_table :shits do |t|
      t.string    :shit

      t.timestamps
    end
  end
end