# BSALE - DESAFIO
* ME: Luis Sepulveda Martinez


![Alt Text](https://media.giphy.com/media/etteBIiZqGF5LHqOen/giphy.gif)

# Especificaciones Tecnicas
- Framework Api Rest(Back-End): Rails 7.0.1 (Ruby)
- Database: Mysql
- Bibliotecas usadas Front-End: Jquery, FontAwesome, Bootstrap.
- IDE: Visual Studio Code
- S.O: Windows 10 y Ubuntu DESKTOP 20.04 LTS 
- Deploy Hosting: Heroku
- Repository Hosting: Github
- Aplicaciones adicionales usadas: Postman

# Deploy API(BACK-END): https://quiet-oasis-51544.herokuapp.com/ - 
# Deploy-REPOSITORY UI(FRONT-END): https://salty-coast-61716.herokuapp.com/ - https://github.com/owllxz/bsale-lasm-ui
# Api (v1)
- Productos: https://quiet-oasis-51544.herokuapp.com/api/v1/products
- Categorias: https://quiet-oasis-51544.herokuapp.com/api/v1/categorys

# Advertencias

- En public se encuentra el archivo perteneciente al Front-end, cabe mencionar que no hace uso de ninguna herramienta proporcionada por el framework de back-end, para evitar mal entendidos se creo un deploy y un repositorio aparte con solo el archivo de front-end, pero para ver los commits, y historial se tiene que realizar del repositorio original(https://github.com/owllxz/bsale-lasm).
- "bsale-lasm/blob/main/config/database.yml" --> Ruta para modificar datos de la base datos.
- "bsale-lasm/blob/main/public/index.html" --> Linea 63: url_base. Atributo el cual pertenece a la url del sitio web al cual debe hacer las consultas.
- La base de datos contiene limitaciones de usuario de entre 20 a 30 por hora. Por lo tanto al no poder conectase en ocaciones no podra recibir los datos. Con fines practicos y optimizacion de tiempo para este proyecto se realizo una replica de la base de datos original y se trabajo de manera local, para el deploy y para el repositorio quedo configurada con la solicitada en el desafio. (bsale-lasm/blob/main/bsale_test.sql --> Script de la base datos local)

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
- El controlador de categorias solo cuenta con una definicion(Index), la cual nos permite obtener todas la categorias.
- Para el Front-end se trabajo con bootstrap para la parte visual, Jquery para realizar consultas AJAX a la base de datos, todas las solicitudes realizadas son IN-LIVE(no requieren actualizacion), y FontAwesome para darle un toque visual con iconos a algunos botones.
- Los productos salen agrupados por categoria, en donde primero salen los de la categoria 1(bebidas energeticas), luego los de la categoria 2(pisco) y asi sucesivamente con las 7 categorias existentes, cabe mencionar que el sistema permite que el administrador agrege mas categorias y productos, y estas apareceran en la web sin ningun inconveniente.
- Los productos tambien gracias a un menu pueden mostrar especificamente los de una categoria "x".
