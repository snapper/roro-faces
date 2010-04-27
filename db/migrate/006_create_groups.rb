class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table "groups" do |f|
      f.column 'name', :string, :null => false
      f.column 'url', :string
    end
  end

  def self.down
  end
end
