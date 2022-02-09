Rails.application.routes.draw do
  #API V1 - Categoria y Productos
  namespace 'api' do
    namespace 'v1' do
      resources :categorys
    end
  end
  namespace 'api' do
    namespace 'v1' do
      resources :products
    end
  end
end
