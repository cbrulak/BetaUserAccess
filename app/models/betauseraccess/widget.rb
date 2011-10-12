module BetaUserAccess
  class Widget < ActiveRecord::Base
    set_table_name "betauseraccess_widgets"

    def make
      puts "widget made"
    end
    
  end
end