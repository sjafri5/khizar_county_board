Rails.application.routes.draw do

  root 'pages#landing'

  get '/contact' => 'pages#contact', as: :contact
  get '/features' => 'pages#features', as: :features
  post '/contact' => 'pages#send_email', as: :send_email

  get '/about' => 'pages#about', as: :about

end
