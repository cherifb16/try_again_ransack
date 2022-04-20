Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks do
    collection do
      match 'search' => 'tasks#search', via: [:get, :post], as: :search
    end
  end
end
