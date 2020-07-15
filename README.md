# Laravel5.7
Introduccion a Laravel 5.7 y proyecto demo
## Recursos:
* Servidor Local XAMPP
* PHP 7.4.7
* Laravel 5.7.3
* Netbeans 11.3 Project PHP
* Composer _(para la instalacion de Laravel)_

## Configuracion de Virtual Host en XAMPP
1. Dentro de http.conf verificar _DocumentRoot "C:/xampp/htdocs"_
2. Dentro de _C:\Windows\System32\drivers\etc_ modificar con permisos de administrador el archivo _host_ añadiendo un nuevo acceso local:
```
127.0.0.1 aprendiendo-laravel.com.example
```
3. Dentro de _C:\xampp\apache\conf\extra_ modificar _httpd-vhosts.conf_ y añadir
```
<VirtualHost *:80>
ServerName aprendiendo-laravel.com.example
DocumentRoot C:\xampp\htdocs\Laravel5.7\aprendiendo-laravel\public
</VirtualHost>
```

### Comandos artisan:
```
php artisan list
php artisan route:list
php artisan make:controller PruebasController
php artisan make:controller UsuarioController --resource
php artisan make:middleware TestYear
```
* Creacion de Bases de datos:
```
php artisan make:migration create_usuarios_table --table=usuarios
php artisan make:migration
php artisan make:rollback
php artisan make:refresh
```

### Conexion a la Base de datos:
* Archivo _.env_

* Rellenar la base de datos con Seeders:
```
php artisan make:seed frutas_seed
php artisan db:seed --class=frutas_seed
```


# Proyecto Laravel
```
<VirtualHost *:80>
ServerName proyecto-laravel.com
DocumentRoot C:\xampp\htdocs\Laravel5.7\proyecto-laravel\public
</VirtualHost>

Dentro de C:\Windows\System32\drivers\etc\host:
127.0.0.1 proyecto-laravel.com

```
* Creacion de Modelos:
```
php artisan make:model Image
php artisan make:model Comment
php artisan make:model Like
```
* Creacion de Autenticacion:
```
php artisan make:auth
```