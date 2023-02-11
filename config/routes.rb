Rails.application.routes.draw do
  root "pages#home"
  get 'about', to: 'pages#about'
  resources :articles


  # When you want to limit some actions, you add only and list the ones you need
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  # new and create work hand in hand, new is for the page, create is for the post action
  # edit and update work hand in hand, edit is for the page, update is for the put/patch action
end
