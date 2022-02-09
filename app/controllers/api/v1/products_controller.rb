module Api
    module V1
        class ProductsController < ApplicationController
            def index
                x = 0
                #Obtener todos los productos de la base de datos
                products = Product.all.order("category ASC") #Productos ordenados de manera ascedente

                while x < products.length()
                    #Operamos el descuento reemplazando el precio. (Precio - (Precio * Porcentaje de descuento))
                    #Porcentaje de descuento = precio * (descuento/100 --> Para obtener decimal)
                    products[x]["price"] = products[x]["price"] - (products[x]["price"] * (products[x]["discount"].to_f/100))
                    x = x + 1
                end
                render json: {status: 'SUCCESS', message: 'Loaded products', data: products}, status: :ok
            end
            def show
                if params[:id].blank?
                    x = 0
                    products = Product.all.order("category ASC") #Productos ordenados de manera ascedente
                    while x < products.length()
                        products[x]["price"] = products[x]["price"] - (products[x]["price"] * (products[x]["discount"].to_f/100))
                        x = x + 1
                    end
                    render json: {status: 'SUCCESS', message: 'Loaded products', data: products}, status: :ok
                else
                    z = params[:id].to_i
                    #Verificamos, si es un numero entonces buscara una categoria y la emparejara con ella
                    if z != 0
                        #Busqueda por categoria 
                        x = 0
                        parametro = params[:id].downcase #Dejamos en minuscula
                        products = Product.all.where(category: z).order("category ASC")
                        while x < products.length()
                            products[x]["price"] = products[x]["price"] - (products[x]["price"] * (products[x]["discount"].to_f/100))
                            x = x + 1
                        end
                        render json: {status: parametro, message: 'Loaded products', data: products}, status: :ok
                    else
                        #Busqueda por nombre
                        x = 0
                        parametro = params[:id].downcase #Dejamos en minuscula
                        products = Product.all.where("lower(name) LIKE ?", "%#{parametro}%").order("category ASC") #Emparejamos con el parametro recibido
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
end