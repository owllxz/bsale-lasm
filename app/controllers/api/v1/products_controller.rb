module Api
    module V1
        class ProductsController < ApplicationController
            def index
                x = 0
                #Obtener todos los productos de la base de datos
                products = Product.all
                while x < products.length()
                    products[x]["price"] = products[x]["price"] - (products[x]["price"] * (products[x]["discount"].to_f/100))
                    x = x + 1
                end
                render json: {status: 'SUCCESS', message: 'Loaded products', data: products}, status: :ok
            end
            def show
                if params[:id].blank?
                    x = 0
                    products = Product.all
                    while x < products.length()
                        products[x]["price"] = products[x]["price"] - (products[x]["price"] * (products[x]["discount"].to_f/100))
                        x = x + 1
                    end
                    render json: {status: 'SUCCESS', message: 'Loaded products', data: products}, status: :ok
                else
                    x = 0
                    parametro = params[:id].downcase #Dejamos en minuscula
                    products = Product.all.where("lower(name) LIKE ?", "%#{parametro}%") #Emparejamos con el parametro recibido
                    while x < products.length()
                        products[x]["price"] = products[x]["price"] - (products[x]["price"] * (products[x]["discount"].to_f/100))
                        x = x + 1
                    end
                    render json: {status: parametro, message: 'Loaded products', data: products}, status: :ok
                end
            end
        end
    end
end