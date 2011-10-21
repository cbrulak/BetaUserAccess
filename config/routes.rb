Rails.application.routes.draw do |map|

  mount_at = Betauseraccess::Engine.config.mount_at

  #match mount_at => 'betauseraccess/sign_up_for_beta_access#index'

  map.resources :sign_up_for_beta_accesses, :only => [ :index, :show ],
                          :controller => "betauseraccess/sign_up_for_beta_accesses",
                          :path_prefix => mount_at,
                          :name_prefix => "betauseraccess_"


  #resources :sign_up_for_beta_accesses do
  #  collection do
  #    get 'thanks'
  #  end
  #end

end
