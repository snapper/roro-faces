class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "users" do |t|
      t.column :email,                     :string
      t.column :crypted_password,          :string, :limit => 40
      t.column :salt,                      :string, :limit => 40
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
      t.column :remember_token,            :string
      t.column :remember_token_expires_at, :datetime

      t.column :mugshot_id,    :integer

      t.column :irc_nick,      :string

      t.column :blurb,         :string
      t.column :aliases,       :string
      t.column :location,      :string

      t.column :name,          :string
      t.column :site_url,      :string
      t.column :site_name,     :string
      
      t.column :admin,         :boolean, :default => false, :null => true
    end
  end

  def self.down
    drop_table "users"
  end
end
