Rails.application.routes.draw do

  root 'pages#landing'

  get '/features' => 'pages#features', as: :features
  get '/mission' => 'pages#mission', as: :mission
  get '/careers' => 'pages#careers', as: :careers
  get '/business-development-job-description' => 'pages#business_development'

  get '/contact' => 'pages#contact', as: :contact
  post '/contact' => 'pages#send_email', as: :send_email

end