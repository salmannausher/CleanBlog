class CreateDislikes < ActiveRecord::Migration
  def change
    create_table :dislikes do |t|
    	t.integer :article_id
      t.timestamps
    end
  end
end
