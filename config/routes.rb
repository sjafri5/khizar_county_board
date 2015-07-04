Rails.application.routes.draw do

  root 'pages#landing'
  get '/test1', to: 'pages#landing_test_1'
  get '/test2', to: 'pages#landing_test_2'
  post '/contact' => 'pages#send_email', as: :send_email

  # Redirect old pages
  get '/features', to: redirect('/')
  get '/mission', to: redirect('/')
  get '/contact', to: redirect('/')
  get '/careers', to: redirect('/')
  get '/business-development-job-description', to: redirect('/')
  get '/Full-Stack-Developer', to: redirect('/')

end