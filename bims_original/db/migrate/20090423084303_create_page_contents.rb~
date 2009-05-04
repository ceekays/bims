class CreatePageContents < ActiveRecord::Migration
  def self.up
    create_table :page_contents do |t|
      t.string :pg_title
      t.string :pg_heading
      t.text :pg_content
      t.string :sb_title
      t.text :sb_content

      t.timestamps
    end
  end

  def self.down
    drop_table :page_contents
  end
end
