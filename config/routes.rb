Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'category/:category', :to => 'category#show'
      get 'graph/:category', :to => 'graph#show'
    end
  end
end
