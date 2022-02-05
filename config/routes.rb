Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace 'api' do
    namespace 'v1' do
      resources :products
    end
  end
  namespace 'api' do
    namespace 'v1' do
      resources :categorys
    end
  end
end
