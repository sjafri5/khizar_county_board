Rails.application.routes.draw do

  root 'pages#landing'

  get '/how-it-works' => 'pages#features', as: :features
  get '/where-we-work' => 'pages#regions', as: :regions
  get '/about-us' => 'pages#about', as: :about
  get '/in-the-news' => 'pages#press', as: :press

  get '/full-stack-developer-job-description' => 'pages#full_stack_developer'

  get '/contact' => 'pages#contact', as: :contact
  post '/contact' => 'pages#send_email', as: :send_email

end