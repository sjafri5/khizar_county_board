Rails.application.routes.draw do

  root 'pages#landing'
  post '/contact' => 'pages#contact', as: :contact

end
