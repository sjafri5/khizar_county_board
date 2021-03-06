Rails.application.routes.draw do

  root 'pages#landing'

  post '/contact' => 'pages#send_email', as: :send_email

  # Redirect old pages
  get '/features', to: redirect('/')
  get '/mission', to: redirect('/')
  get '/contact', to: redirect('/')
  get '/careers', to: redirect('/')
end