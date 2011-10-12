ActiveRecord::Schema.define(:version => 0) do

    create_table :betauseraccess_widgets, :force => true do |t|
      t.string    :title
      t.datetime  :created_at
      t.datetime  :updated_at
    end

    add_index :betauseraccess_widgets, [:title]

end