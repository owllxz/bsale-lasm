module Api
    module V1
        class ProductsController < ApplicationController
            def index
                #Obtener todos los productos de la base de datos
                products = Product.all
                render json: {status: 'SUCCESS', message: 'Loaded products', data: products}, status: :ok
            end
        end
    end
end