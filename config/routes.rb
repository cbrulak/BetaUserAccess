Rails.application.routes.draw do |map|

  mount_at = Betauseraccess::Engine.config.mount_at

  #match mount_at => 'betauseraccess/widgets#index'

  #resources :referencelinks

  resources :sign_up_for_beta_accesses do
    collection do
      get 'thanks'
    end
  end

end
