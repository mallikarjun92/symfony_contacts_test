#symfony_contacts_test
PHP Unit test for symfony_contacts

**** Requirements

* Symfony CLI  (To run local server using symfony download & install Symfony CLI from https://symfony.com/download)
* PHP 7.4 or higher


******** CLONE PROJECT

```bash
git clone https://github.com/mallikarjun92/symfony_contacts_test.git
cd symfony_contacts_test
```

******** Install Dependencies

```bash
composer install
```

******** Connecting Database

* NOTE: You can use the same database which is created for symfony_contacts

OR

* Create a empty MySQL database from localhost/phpmyadmin
* Configure database in .env file located in root directory
* In the .env file located in root directory change line DATABASE_URL="mysql://root:@127.0.0.1:3306/symfApp" to your database credential in the format shown below 
* e.g. DATABASE_URL="mysql://{username}:{password}@127.0.0.1:3306/{databasename}"


******* Run Doctrine Migration

```bash
php bin/console doctrine:migrations:migrate
```

****** Run PHP Unit test

```bash
php bin/phpunit
```
