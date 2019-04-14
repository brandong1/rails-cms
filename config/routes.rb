Rails.application.routes.draw do
  
  # Root Route
  root "subject#index"

  # This code block creates all 8 routes for our SubjectController
  resources :subjects do
    member do
      get :delete
    end
  end

  #Simple Route
  # get 'demo/index' #short match route

  # get ':controller(/:action(/:id))'
  # Simple route
  # "demo/index", :to => "demo#index", :via => :get #long version

  # Default Route
  # :controller/:action/:id
  # get ':controller(/:action(/:id))
  # match ':controller(/:action(/:id))', :via => :get




  # Resource
end
