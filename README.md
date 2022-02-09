# README

*BSALE - DESAFIO
*Nombre: Luis Sepulveda Martinez


![Alt Text](https://media.giphy.com/media/etteBIiZqGF5LHqOen/giphy.gif)

# Especificaciones Tecnicas
- Framework Api Rest(Back-End): Rails 7.0.1
- Database: Mysql
- Bibliotecas usadas Front-End: Jquery, FontAwesome, Bootstrap.
- IDE: Visual Studio Code
- S.O: Windows 10 y Ubuntu DESKTOP 20.04 LTS 
- Deploy Hosting: Heroku
- Repository Hosting: Github

# Deploy: https://quiet-oasis-51544.herokuapp.com/
# Api (v1)
- Productos: https://quiet-oasis-51544.herokuapp.com/api/v1/products
- Categorias: https://quiet-oasis-51544.herokuapp.com/api/v1/categorys

# Descripcion

- El desafio consistia en realizar una tienda online que desplegara los productos agrupados por categorias a la cual pertenecen.
- Para ello se hizo uso del framework de Rails para realizar el back-end. En dicho framework se crearon los modelos y controladores correspondientes para Categoria(Categorys) y Productos(Products).
- El controlador de productos cuenta con dos definiciones:
  * Index: Se obtiene los productos dentro de la base de datos agrupados por categoria de manera ascendente, en donde se realizan los descuentos respectivos de cada producto.
  * Show: Nos permite obtener un o los productos de tres maneras diferentes:
    * Si recibe un numero: Devolvera los productos que contengan la categoria con dicho numero.
    * Si recibe una letra: Devolvera los productos que contengan dichas letras en su nombre(name).
    * Si recibe vacio: Devolvera todos los productos.
   
    ![Alt Text](https://media.giphy.com/media/HfTuxthNowgsFxIKFj/giphy.gif)
    
    ![Alt Text](https://media.giphy.com/media/YazqsJbKNPelyIlnSq/giphy.gif)
