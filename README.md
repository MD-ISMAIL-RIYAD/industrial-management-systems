

  ===1st enverment setup===
php artisan make:command GenerateCrud --command=make:crud
php artisan generate:crud manufacturers --force

===create curd in the table name==

php artisan generate:crud tableName
php artisan generate:crud tableName --force (if use second time with same table)
================== important commands for CRUD operations

1.php artisan make:model Service -mcr (Service= model name, m=migration, cr=resource controller)
2.php artisan migrate (run migration files -in this case it will create new table)
3.php artisan make:view services.index(crate view page in the subfolder in this case it will create index.blade.php in the services folder)
4.php artisan storage:link

=======push in github
git add . or git all 
git commit -m""
git push

=================== Commands after clone form Github

.env.example .env (copy files form .env.example to .env) ->setup database in .env file
composer install (install all dependencies)
php artisan key:generate (generate all keys)
