Rails.application.routes.draw do |map|

  mount_at = BetaUserAccess::Engine.config.mount_at

  match mount_at => 'betauseraccess/widgets#index'

  map.resources :widgets, :only => [ :index, :show ],
                          :controller => "betauseraccess/widgets",
                          :path_prefix => mount_at,
                          :name_prefix => "betauseraccess_"

end
