Rails.application.routes.draw do
  
  # Root Route
  root "demo#index"
  
  #Simple Route
  get 'demo/index' #short match route
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'

  # get ':controller(/:action(/:id))'
  # Simple route
  # "demo/index", :to => "demo#index", :via => :get #long version

  # Default Route
  # :controller/:action/:id
  # get ':controller(/:action(/:id))
  # match ':controller(/:action(/:id))', :via => :get




  # Resource
end
