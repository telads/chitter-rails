Rails.application.routes.draw do
  get '/', to: 'chitter#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/peeps', to: 'chitter#peeps'


  get '/sign-up', to: 'home#sign_up'

end
