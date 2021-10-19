Rails.application.routes.draw do
# VERB  URI controller#action (acition é o metodo no controller)
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
end
