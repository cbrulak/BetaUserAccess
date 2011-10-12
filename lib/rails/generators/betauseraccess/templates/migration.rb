class CreateBetaUserAccessTables < ActiveRecord::Migration
  def self.up
    SCHEMA_AUTO_INSERTED_HERE
  end

  def self.down
    drop_table :betauseraccess_widgets
  end
end
