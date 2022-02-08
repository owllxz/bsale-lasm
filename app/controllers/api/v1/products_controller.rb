module Api
    module V1
        class ProductsController < ApplicationController
            def index
                #Obtener todos los productos de la base de datos
                products = Product.all
                render json: {status: 'SUCCESS', message: 'Loaded products', data: products}, status: :ok
            end
            def show
                if params[:id].blank?
                    products = Product.all
                    render json: {status: 'SUCCESS', message: 'Loaded products', data: products}, status: :ok
                else
                    parametro = params[:id].downcase #Dejamos en minuscula
                    products = Product.all.where("lower(name) LIKE ?", "%#{parametro}%") #Emparejamos con el parametro recibido
                    render json: {status: parametro, message: 'Loaded products', data: products}, status: :ok
                end
            end
        end
    end
end