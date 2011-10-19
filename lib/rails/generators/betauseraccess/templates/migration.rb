class CreateBetauseraccessTables < ActiveRecord::Migration
  def self.up
    SCHEMA_AUTO_INSERTED_HERE
  end

  def self.down
    drop_table :sign_up_for_beta_accesses
  end
end
