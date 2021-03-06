## Meeting Scheduler System.
#### Laravel-Auth is a Complete Build of Laravel 5.7 with Email Registration Verification, Social Authentication, User Roles and Permissions, User Profiles, and Admin restricted user management system. Built on Bootstrap 4. 
#### Based on jeremekenedy laravel-auth.

#### Table of contents
- [About](#about)
- [Features](#features)
- [Installation Instructions](#installation-instructions)
    - [Build the Front End Assets with Mix](#build-front-end-assets-with-mix)
    - [Optionally Build Cache](#optionally-build-cache)
- [User Roles](#user-roles)
- [Seeded Permissions](#seeded-permissions)
- [Import SQL Files](#import-sql-files)
- [Run MSS Application](#run-mss-application)
- [Seeded User](#seeded-user)
- [Routes](#routes)
- [Environment File](#environment-file)
- [Updates](#updates)
- [File Tree](#file-tree)
- [Opening an Issue](#opening-an-issue)
- [Laravel Auth License](#laravel-auth-license)

### About
Laravel 5.7 with user authentication, registration with email confirmation, social media authentication, password recovery, and captcha protection. Uses offical [Bootstrap 4](http://getbootstrap.com). This also makes full use of Controllers for the routes, templates for the views, and makes use of middleware for routing. Project can be stood up in minutes.

### Features
#### A [Laravel](http://laravel.com/) 5.7.x with minimal [Bootstrap](http://getbootstrap.com) 4.0.x project.

| Laravel-Auth Features  |
| :------------ |
|Built on [Laravel](http://laravel.com/) 5.7|
|Built on [Bootstrap](https://getbootstrap.com/) 4|
|Uses [MySQL](https://github.com/mysql) Database (can be changed)|
|Uses [Artisan](http://laravel.com/docs/5.7/artisan) to manage database migration, schema creations, and create/publish page controller templates|
|Dependencies are managed with [COMPOSER](https://getcomposer.org/)|
|Laravel Scaffolding **User** and **Administrator Authentication**.|
|User [Socialite Logins](https://github.com/laravel/socialite) ready to go - See API list used below|
|[Google Maps API v3](https://developers.google.com/maps/documentation/javascript/) for User Location lookup and Geocoding|
|CRUD (Create, Read, Update, Delete) Themes Management|
|CRUD (Create, Read, Update, Delete) User Management|
|Robust [Laravel Logging](https://laravel.com/docs/5.7/errors#logging) with admin UI using MonoLog|
|Google [reCaptcha Protection with Google API](https://developers.google.com/recaptcha/)|
|User Registration with email verification|
|Makes us of Laravel [Mix](https://laravel.com/docs/5.7/mix) to compile assets|
|Makes use of [Language Localization Files](https://laravel.com/docs/5.7/localization)|
|Active Nav states using [Laravel Requests](https://laravel.com/docs/5.7/requests)|
|Restrict User Email Activation Attempts|
|Capture IP to users table upon signup|
|Uses [Laravel Debugger](https://github.com/barryvdh/laravel-debugbar) for development|
|Makes us of [Password Strength Meter](https://github.com/elboletaire/password-strength-meter)|
|Makes use of [hideShowPassword](https://github.com/cloudfour/hideShowPassword)|
|User Avatar Image AJAX Upload with [Dropzone.js](http://www.dropzonejs.com/#configuration)|
|User Gravatar using [Gravatar API](https://github.com/creativeorange/gravatar)|
|User Password Reset via Email Token|
|User Login with remember password|
|User [Roles/ACL Implementation](https://github.com/jeremykenedy/laravel-roles)|
|Makes of [Laravel's Soft Delete Structure](https://laravel.com/docs/5.7/eloquent#soft-deleting)|
|Soft Deleted Users Management System|
|Permanently Delete Soft Deleted Users|
|User Delete Account with Goodbye email|
|User Restore Deleted Account Token|
|Restore Soft Deleted Users|
|View Soft Deleted Users|
|Captures Soft Delete Date|
|Captures Soft Delete IP|
|Admin Routing Details UI|
|Admin PHP Information UI|
|Eloquent user profiles|
|User Themes|
|404 Page|
|403 Page|
|Configurable Email Notification via [Laravel-Exception-Notifier](https://github.com/jeremykenedy/laravel-exception-notifier)|
|User Delete with Goodby email|
|User Restore Deleted Account|
|Activity Logging using [Laravel-logger](https://github.com/jeremykenedy/laravel-logger)|
|Optional 2-step account login verfication with [Laravel 2-Step Verification](https://github.com/jeremykenedy/laravel2step)|
|Uses [Laravel PHP Info](https://github.com/jeremykenedy/laravel-phpinfo) package|

### Installation Instructions
1. Run `git clone https://github.com/asmadimd/mss_laravel`
2. Create a MySQL database for the project
    * ```mysql -u root -p```
    * ```create database laravelAuth;```
    * ```\q```
3. From the projects root run `cp .env.example .env`
4. Configure your `.env` file
5. Run `composer update` from the projects root folder
6. From the projects root folder run:
```
php artisan vendor:publish --tag=laravelroles &&
php artisan vendor:publish --tag=laravel2step
```
7. From the projects root folder run `sudo chmod -R 755 ../laravel-auth`
8. From the projects root folder run `php artisan key:generate`
9. From the projects root folder run `php artisan migrate`
10. From the projects root folder run `composer dump-autoload`
11. From the projects root folder run `php artisan db:seed`

#### Optionally Build Cache
1. From the projects root folder run `php artisan config:cache`

##### User Roles
  * Admin/ Programme Leader - Level 5
  * Lecturer - Level 1
  * Student - Level 1
  * Unverified - Level 0

##### Seeded Permissions
  * view.users
  * create.users
  * edit.users
  * delete.users

##### Import SQL files

1. Create database 'laravelauth' in phpmyadmin
2. Import SQL file in /sql in project root

##### Run MSS Application

1. Download/ Clone, and paste project file in htdocs root
2. Configure .env file to match with your mysql/phpmyadmin username and password
3. Open XAMPP, and starts apache and MySQL
4. Run MSS application by command in terminal/ cmd: php artisan serve
5. Visit localhost:8000 on your machine.

##### Seeded User

1. Remember to import SQL file laravelauth.sql first at /sql at project root.
2. Admin User: admin@ubd.edu.bn
3. Lecturer: lecturer@ubd.edu.bn
4. Student: student@ubd.edu.bn
5. Password for all users above is 'password' without quote.

### Routes

```
+--------+----------------------------------------+---------------------------------------+----------------------------------+---------------------------------------------------------------------------------------------------+-------------------------------------------------+
| Domain | Method                                 | URI                                   | Name                             | Action                                                                                            | Middleware                                      |
+--------+----------------------------------------+---------------------------------------+----------------------------------+---------------------------------------------------------------------------------------------------+-------------------------------------------------+
|        | GET|HEAD                               | /                                     | welcome                          | App\Http\Controllers\WelcomeController@welcome                                                    | web                                             |
|        | GET|HEAD                               | _debugbar/assets/javascript           | debugbar.assets.js               | Barryvdh\Debugbar\Controllers\AssetController@js                                                  | Barryvdh\Debugbar\Middleware\DebugbarEnabled    |
|        | GET|HEAD                               | _debugbar/assets/stylesheets          | debugbar.assets.css              | Barryvdh\Debugbar\Controllers\AssetController@css                                                 | Barryvdh\Debugbar\Middleware\DebugbarEnabled    |
|        | DELETE                                 | _debugbar/cache/{key}/{tags?}         | debugbar.cache.delete            | Barryvdh\Debugbar\Controllers\CacheController@delete                                              | Barryvdh\Debugbar\Middleware\DebugbarEnabled    |
|        | GET|HEAD                               | _debugbar/clockwork/{id}              | debugbar.clockwork               | Barryvdh\Debugbar\Controllers\OpenHandlerController@clockwork                                     | Barryvdh\Debugbar\Middleware\DebugbarEnabled    |
|        | GET|HEAD                               | _debugbar/open                        | debugbar.openhandler             | Barryvdh\Debugbar\Controllers\OpenHandlerController@handle                                        | Barryvdh\Debugbar\Middleware\DebugbarEnabled    |
|        | GET|HEAD                               | activate                              | activate                         | App\Http\Controllers\Auth\ActivateController@initial                                              | web,activity,auth                               |
|        | GET|HEAD                               | activate/{token}                      | authenticated.activate           | App\Http\Controllers\Auth\ActivateController@activate                                             | web,activity,auth                               |
|        | GET|HEAD                               | activation                            | authenticated.activation-resend  | App\Http\Controllers\Auth\ActivateController@resend                                               | web,activity,auth                               |
|        | GET|HEAD                               | activation-required                   | activation-required              | App\Http\Controllers\Auth\ActivateController@activationRequired                                   | web,auth,activated,activity                     |
|        | GET|HEAD                               | active-users                          |                                  | App\Http\Controllers\AdminDetailsController@activeUsers                                           | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | activity                              | activity                         | jeremykenedy\LaravelLogger\App\Http\Controllers\LaravelLoggerController@showAccessLog             | web,auth,activity,role:admin                    |
|        | DELETE                                 | activity/clear-activity               | clear-activity                   | jeremykenedy\LaravelLogger\App\Http\Controllers\LaravelLoggerController@clearActivityLog          | web,auth,activity,role:admin                    |
|        | GET|HEAD                               | activity/cleared                      | cleared                          | jeremykenedy\LaravelLogger\App\Http\Controllers\LaravelLoggerController@showClearedActivityLog    | web,auth,activity,role:admin                    |
|        | GET|HEAD                               | activity/cleared/log/{id}             |                                  | jeremykenedy\LaravelLogger\App\Http\Controllers\LaravelLoggerController@showClearedAccessLogEntry | web,auth,activity,role:admin                    |
|        | DELETE                                 | activity/destroy-activity             | destroy-activity                 | jeremykenedy\LaravelLogger\App\Http\Controllers\LaravelLoggerController@destroyActivityLog        | web,auth,activity,role:admin                    |
|        | GET|HEAD                               | activity/log/{id}                     |                                  | jeremykenedy\LaravelLogger\App\Http\Controllers\LaravelLoggerController@showAccessLogEntry        | web,auth,activity,role:admin                    |
|        | POST                                   | activity/restore-log                  | restore-activity                 | jeremykenedy\LaravelLogger\App\Http\Controllers\LaravelLoggerController@restoreClearedActivityLog | web,auth,activity,role:admin                    |
|        | POST                                   | avatar/upload                         | avatar.upload                    | App\Http\Controllers\ProfilesController@upload                                                    | web,auth,activated,currentUser,activity,twostep |
|        | POST                                   | broadcasting/auth                     |                                  | Illuminate\Broadcasting\BroadcastController@authenticate                                          | web                                             |
|        | GET|HEAD                               | exceeded                              | exceeded                         | App\Http\Controllers\Auth\ActivateController@exceeded                                             | web,activity,auth                               |
|        | GET|HEAD                               | home                                  | public.home                      | App\Http\Controllers\UserController@index                                                         | web,auth,activated,activity,twostep             |
|        | GET|HEAD                               | images/profile/{id}/avatar/{image}    |                                  | App\Http\Controllers\ProfilesController@userProfileAvatar                                         | web,auth,activated,currentUser,activity,twostep |
|        | POST                                   | login                                 |                                  | App\Http\Controllers\Auth\LoginController@login                                                   | web,guest                                       |
|        | GET|HEAD                               | login                                 | login                            | App\Http\Controllers\Auth\LoginController@showLoginForm                                           | web,guest                                       |
|        | GET|HEAD                               | logout                                | logout                           | App\Http\Controllers\Auth\LoginController@logout                                                  | web,auth,activated,activity                     |
|        | POST                                   | logout                                | logout                           | App\Http\Controllers\Auth\LoginController@logout                                                  | web                                             |
|        | GET|HEAD                               | logs                                  |                                  | Rap2hpoutre\LaravelLogViewer\LogViewerController@index                                            | web,auth,activated,role:admin,activity,twostep  |
|        | POST                                   | password/email                        | password.email                   | App\Http\Controllers\Auth\ForgotPasswordController@sendResetLinkEmail                             | web,guest                                       |
|        | POST                                   | password/reset                        |                                  | App\Http\Controllers\Auth\ResetPasswordController@reset                                           | web,guest                                       |
|        | GET|HEAD                               | password/reset                        | password.request                 | App\Http\Controllers\Auth\ForgotPasswordController@showLinkRequestForm                            | web,guest                                       |
|        | GET|HEAD                               | password/reset/{token}                | password.reset                   | App\Http\Controllers\Auth\ResetPasswordController@showResetForm                                   | web,guest                                       |
|        | GET|HEAD|POST|PUT|PATCH|DELETE|OPTIONS | php                                   |                                  | Illuminate\Routing\RedirectController                                                             | web                                             |
|        | GET|HEAD                               | phpinfo                               | laravelPhpInfo::phpinfo          | jeremykenedy\LaravelPhpInfo\App\Http\Controllers\LaravelPhpInfoController@phpinfo                 | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | profile/create                        | profile.create                   | App\Http\Controllers\ProfilesController@create                                                    | web,auth,activated,currentUser,activity,twostep |
|        | GET|HEAD                               | profile/{profile}                     | profile.show                     | App\Http\Controllers\ProfilesController@show                                                      | web,auth,activated,currentUser,activity,twostep |
|        | PUT|PATCH                              | profile/{profile}                     | profile.update                   | App\Http\Controllers\ProfilesController@update                                                    | web,auth,activated,currentUser,activity,twostep |
|        | GET|HEAD                               | profile/{profile}/edit                | profile.edit                     | App\Http\Controllers\ProfilesController@edit                                                      | web,auth,activated,currentUser,activity,twostep |
|        | GET|HEAD                               | profile/{username}                    | {username}                       | App\Http\Controllers\ProfilesController@show                                                      | web,auth,activated,activity,twostep             |
|        | DELETE                                 | profile/{username}/deleteUserAccount  | {username}                       | App\Http\Controllers\ProfilesController@deleteUserAccount                                         | web,auth,activated,currentUser,activity,twostep |
|        | PUT                                    | profile/{username}/updateUserAccount  | {username}                       | App\Http\Controllers\ProfilesController@updateUserAccount                                         | web,auth,activated,currentUser,activity,twostep |
|        | PUT                                    | profile/{username}/updateUserPassword | {username}                       | App\Http\Controllers\ProfilesController@updateUserPassword                                        | web,auth,activated,currentUser,activity,twostep |
|        | GET|HEAD                               | re-activate/{token}                   | user.reactivate                  | App\Http\Controllers\RestoreUserController@userReActivate                                         | web,activity                                    |
|        | GET|HEAD                               | register                              | register                         | App\Http\Controllers\Auth\RegisterController@showRegistrationForm                                 | web,guest                                       |
|        | POST                                   | register                              |                                  | App\Http\Controllers\Auth\RegisterController@register                                             | web,guest                                       |
|        | GET|HEAD                               | routes                                |                                  | App\Http\Controllers\AdminDetailsController@listRoutes                                            | web,auth,activated,role:admin,activity,twostep  |
|        | POST                                   | search-users                          | search-users                     | App\Http\Controllers\UsersManagementController@search                                             | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | social/handle/{provider}              | social.handle                    | App\Http\Controllers\Auth\SocialController@getSocialHandle                                        | web,activity                                    |
|        | GET|HEAD                               | social/redirect/{provider}            | social.redirect                  | App\Http\Controllers\Auth\SocialController@getSocialRedirect                                      | web,activity                                    |
|        | POST                                   | themes                                | themes.store                     | App\Http\Controllers\ThemesManagementController@store                                             | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | themes                                | themes                           | App\Http\Controllers\ThemesManagementController@index                                             | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | themes/create                         | themes.create                    | App\Http\Controllers\ThemesManagementController@create                                            | web,auth,activated,role:admin,activity,twostep  |
|        | DELETE                                 | themes/{theme}                        | themes.destroy                   | App\Http\Controllers\ThemesManagementController@destroy                                           | web,auth,activated,role:admin,activity,twostep  |
|        | PUT|PATCH                              | themes/{theme}                        | themes.update                    | App\Http\Controllers\ThemesManagementController@update                                            | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | themes/{theme}                        | themes.show                      | App\Http\Controllers\ThemesManagementController@show                                              | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | themes/{theme}/edit                   | themes.edit                      | App\Http\Controllers\ThemesManagementController@edit                                              | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | users                                 | users                            | App\Http\Controllers\UsersManagementController@index                                              | web,auth,activated,role:admin,activity,twostep  |
|        | POST                                   | users                                 | users.store                      | App\Http\Controllers\UsersManagementController@store                                              | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | users/create                          | users.create                     | App\Http\Controllers\UsersManagementController@create                                             | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | users/deleted                         | deleted.index                    | App\Http\Controllers\SoftDeletesController@index                                                  | web,auth,activated,role:admin,activity,twostep  |
|        | DELETE                                 | users/deleted/{deleted}               | deleted.destroy                  | App\Http\Controllers\SoftDeletesController@destroy                                                | web,auth,activated,role:admin,activity,twostep  |
|        | PUT|PATCH                              | users/deleted/{deleted}               | deleted.update                   | App\Http\Controllers\SoftDeletesController@update                                                 | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | users/deleted/{deleted}               | deleted.show                     | App\Http\Controllers\SoftDeletesController@show                                                   | web,auth,activated,role:admin,activity,twostep  |
|        | DELETE                                 | users/{user}                          | user.destroy                     | App\Http\Controllers\UsersManagementController@destroy                                            | web,auth,activated,role:admin,activity,twostep  |
|        | PUT|PATCH                              | users/{user}                          | users.update                     | App\Http\Controllers\UsersManagementController@update                                             | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | users/{user}                          | users.show                       | App\Http\Controllers\UsersManagementController@show                                               | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | users/{user}/edit                     | users.edit                       | App\Http\Controllers\UsersManagementController@edit                                               | web,auth,activated,role:admin,activity,twostep  |
|        | GET|HEAD                               | verification/needed                   | laravel2step::verificationNeeded | jeremykenedy\laravel2step\App\Http\Controllers\TwoStepController@showVerification                 | web,auth,Closure                                |
|        | POST                                   | verification/resend                   | laravel2step::resend             | jeremykenedy\laravel2step\App\Http\Controllers\TwoStepController@resend                           | web,auth,Closure                                |
|        | POST                                   | verification/verify                   | laravel2step::verify             | jeremykenedy\laravel2step\App\Http\Controllers\TwoStepController@verify                           | web,auth,Closure                                |
+--------+----------------------------------------+---------------------------------------+----------------------------------+---------------------------------------------------------------------------------------------------+-------------------------------------------------+
```

### Environment File
Example `.env` file:

```bash

APP_NAME=Laravel
APP_ENV=local
APP_KEY=
APP_DEBUG=true
APP_URL=http://localhost

LOG_CHANNEL=stack

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=laravelAuth
DB_USERNAME=homestead
DB_PASSWORD=secret

BROADCAST_DRIVER=pusher
CACHE_DRIVER=file
SESSION_DRIVER=file
SESSION_LIFETIME=120
QUEUE_DRIVER=sync

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_DRIVER=smtp
MAIL_HOST=mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null

MAIL_FROM_ADDRESS=
MAIL_FROM_NAME=''

EMAIL_EXCEPTION_ENABLED=false
EMAIL_EXCEPTION_FROM=email@email.com
EMAIL_EXCEPTION_TO='email1@gmail.com, email2@gmail.com'
EMAIL_EXCEPTION_CC=''
EMAIL_EXCEPTION_BCC=''
EMAIL_EXCEPTION_SUBJECT=''
```

#### Laravel Developement Packages Used References
* http://laravel.com/docs/5.7/authentication
* http://laravel.com/docs/5.7/authorization
* http://laravel.com/docs/5.7/routing
* https://laravel.com/docs/5.7/migrations
* https://laravel.com/docs/5.7/queries
* https://laravel.com/docs/5.7/views
* https://laravel.com/docs/5.7/eloquent
* https://laravel.com/docs/5.7/eloquent-relationships
* https://laravel.com/docs/5.7/requests
* https://laravel.com/docs/5.7/errors

###### Updates:
* Update to Bootstrap 4
* Update to Laravel 5.7
* Added optional 2-step account login verfication with [Laravel 2-Step Verification](https://github.com/jeremykenedy/laravel2step)
* Added activity logging using [Laravel-logger](https://github.com/jeremykenedy/laravel-logger)
* Added Configurable Email Notification using [Laravel-Exception-Notifier](https://github.com/jeremykenedy/laravel-exception-notifier)
* Update to Laravel 5.5
* Added User Delete with Goodbye email
* Added User Restore Deleted Account from email with secure token
* Added [Soft Deletes](https://laravel.com/docs/5.7/eloquent#soft-deleting) and Soft Deletes Management panel
* Added User Account Settings to Profile Edit
* Added User Change Password to Profile Edit
* Added User Delete Account to Profile Edit
* Added [Password Strength Meter](https://github.com/elboletaire/password-strength-meter)
* Added [hideShowPassword](https://github.com/cloudfour/hideShowPassword)
* Added Admin Routing Details
* Admin PHP Information
* Added Robust [Laravel Logging](https://laravel.com/docs/5.7/errors#logging) with admin UI using MonoLog
* Added Active Nav states using [Laravel Requests](https://laravel.com/docs/5.7/requests)
* Added [Laravel Debugger](https://github.com/barryvdh/laravel-debugbar) with Service Provider to manage status in `.env` file.
* Updated Capture IP not found IP address
* Added User Avatar Image AJAX Upload with [Dropzone.js](http://www.dropzonejs.com/#configuration)
* Added User Gravatar using Gravatar API
* Added Themes Management.
* Add user profiles with seeded list and global view
* Added eloquent editable user profile
* Added IP Capture
* Added CRUD(Create, Read, Update, Delete) User Management

### File Tree
```
laravel-auth
├── .env.example
├── .env.travis
├── .gitattributes
├── .gitignore
├── .travis.yml
├── CODE_OF_CONDUCT.md
├── LICENSE
├── README.md
├── app
│   ├── Console
│   │   ├── Commands
│   │   │   └── DeleteExpiredActivations.php
│   │   └── Kernel.php
│   ├── Exceptions
│   │   └── Handler.php
│   ├── Http
│   │   ├── Controllers
│   │   │   ├── AdminDetailsController.php
│   │   │   ├── Auth
│   │   │   │   ├── ActivateController.php
│   │   │   │   ├── ForgotPasswordController.php
│   │   │   │   ├── LoginController.php
│   │   │   │   ├── RegisterController.php
│   │   │   │   ├── ResetPasswordController.php
│   │   │   │   └── SocialController.php
│   │   │   ├── Controller.php
│   │   │   ├── ProfilesController.php
│   │   │   ├── RestoreUserController.php
│   │   │   ├── SoftDeletesController.php
│   │   │   ├── ThemesManagementController.php
│   │   │   ├── UserController.php
│   │   │   ├── UsersManagementController.php
│   │   │   └── WelcomeController.php
│   │   ├── Kernel.php
│   │   ├── Middleware
│   │   │   ├── Authenticate.php
│   │   │   ├── CheckCurrentUser.php
│   │   │   ├── CheckIsUserActivated.php
│   │   │   ├── EncryptCookies.php
│   │   │   ├── RedirectIfAuthenticated.php
│   │   │   ├── TrimStrings.php
│   │   │   ├── TrustProxies.php
│   │   │   └── VerifyCsrfToken.php
│   │   └── ViewComposers
│   │       └── ThemeComposer.php
│   ├── Logic
│   │   ├── Activation
│   │   │   └── ActivationRepository.php
│   │   └── Macros
│   │       └── HtmlMacros.php
│   ├── Mail
│   │   └── ExceptionOccured.php
│   ├── Models
│   │   ├── Activation.php
│   │   ├── Profile.php
│   │   ├── Social.php
│   │   ├── Theme.php
│   │   └── User.php
│   ├── Notifications
│   │   ├── SendActivationEmail.php
│   │   └── SendGoodbyeEmail.php
│   ├── Providers
│   │   ├── AppServiceProvider.php
│   │   ├── AuthServiceProvider.php
│   │   ├── BroadcastServiceProvider.php
│   │   ├── ComposerServiceProvider.php
│   │   ├── EventServiceProvider.php
│   │   ├── LocalEnvironmentServiceProvider.php
│   │   ├── MacroServiceProvider.php
│   │   └── RouteServiceProvider.php
│   └── Traits
│       ├── ActivationTrait.php
│       ├── CaptchaTrait.php
│       └── CaptureIpTrait.php
├── artisan
├── bootstrap
│   ├── app.php
│   ├── autoload.php
│   └── cache
│       ├── .gitignore
│       ├── packages.php
│       └── services.php
├── composer.json
├── composer.lock
├── config
│   ├── app.php
│   ├── auth.php
│   ├── broadcasting.php
│   ├── cache.php
│   ├── database.php
│   ├── debugbar.php
│   ├── exceptions.php
│   ├── filesystems.php
│   ├── gravatar.php
│   ├── hashing.php
│   ├── laravel2step.php
│   ├── laravelPhpInfo.php
│   ├── logging.php
│   ├── mail.php
│   ├── queue.php
│   ├── roles.php
│   ├── services.php
│   ├── session.php
│   ├── settings.php
│   ├── usersmanagement.php
│   └── view.php
├── database
│   ├── .gitignore
│   ├── factories
│   │   └── ModelFactory.php
│   ├── migrations
│   │   ├── 2014_10_12_000000_create_users_table.php
│   │   ├── 2014_10_12_100000_create_password_resets_table.php
│   │   ├── 2016_01_15_105324_create_roles_table.php
│   │   ├── 2016_01_15_114412_create_role_user_table.php
│   │   ├── 2016_01_26_115212_create_permissions_table.php
│   │   ├── 2016_01_26_115523_create_permission_role_table.php
│   │   ├── 2016_02_09_132439_create_permission_user_table.php
│   │   ├── 2017_03_09_082449_create_social_logins_table.php
│   │   ├── 2017_03_09_082526_create_activations_table.php
│   │   ├── 2017_03_20_213554_create_themes_table.php
│   │   ├── 2017_03_21_042918_create_profiles_table.php
│   │   └── 2017_12_09_070937_create_two_step_auth_table.php
│   └── seeds
│       ├── ConnectRelationshipsSeeder.php
│       ├── DatabaseSeeder.php
│       ├── PermissionsTableSeeder.php
│       ├── RolesTableSeeder.php
│       ├── ThemesTableSeeder.php
│       └── UsersTableSeeder.php
├── license.svg
├── package-lock.json
├── package.json
├── phpunit.xml
├── public
│   ├── .htaccess
│   ├── css
│   │   ├── app.css
│   │   └── laravel2step
│   │       ├── app.css
│   │       └── app.min.css
│   ├── favicon.ico
│   ├── fonts
│   │   ├── fontawesome-webfont.eot
│   │   ├── fontawesome-webfont.svg
│   │   ├── fontawesome-webfont.ttf
│   │   ├── fontawesome-webfont.woff
│   │   ├── fontawesome-webfont.woff2
│   │   ├── glyphicons-halflings-regular.eot
│   │   ├── glyphicons-halflings-regular.svg
│   │   ├── glyphicons-halflings-regular.ttf
│   │   ├── glyphicons-halflings-regular.woff
│   │   └── glyphicons-halflings-regular.woff2
│   ├── images
│   │   ├── wink.png
│   │   └── wink.svg
│   ├── index.php
│   ├── js
│   │   ├── app.99230f42ad184f498ce6.js
│   │   └── app.js
│   ├── mix-manifest.json
│   ├── robots.txt
│   └── web.config
├── resources
│   ├── assets
│   │   ├── js
│   │   │   ├── app.js
│   │   │   ├── bootstrap.js
│   │   │   └── components
│   │   │       ├── ExampleComponent.vue
│   │   │       └── UsersCount.vue
│   │   └── sass
│   │       ├── _avatar.scss
│   │       ├── _badges.scss
│   │       ├── _buttons.scss
│   │       ├── _forms.scss
│   │       ├── _helpers.scss
│   │       ├── _hideShowPassword.scss
│   │       ├── _lists.scss
│   │       ├── _logs.scss
│   │       ├── _margins.scss
│   │       ├── _mixins.scss
│   │       ├── _modals.scss
│   │       ├── _panels.scss
│   │       ├── _password.scss
│   │       ├── _socials.scss
│   │       ├── _typography.scss
│   │       ├── _user-profile.scss
│   │       ├── _variables.scss
│   │       ├── _visibility.scss
│   │       ├── _wells.scss
│   │       └── app.scss
│   ├── lang
│   │   ├── en
│   │   │   ├── auth.php
│   │   │   ├── emails.php
│   │   │   ├── forms.php
│   │   │   ├── modals.php
│   │   │   ├── pagination.php
│   │   │   ├── passwords.php
│   │   │   ├── permsandroles.php
│   │   │   ├── profile.php
│   │   │   ├── socials.php
│   │   │   ├── themes.php
│   │   │   ├── titles.php
│   │   │   ├── usersmanagement.php
│   │   │   └── validation.php
│   │   └── fr
│   │       ├── auth.php
│   │       ├── emails.php
│   │       ├── forms.php
│   │       ├── modals.php
│   │       ├── pagination.php
│   │       ├── passwords.php
│   │       ├── permsandroles.php
│   │       ├── profile.php
│   │       ├── socials.php
│   │       ├── titles.php
│   │       ├── usersmanagement.php
│   │       └── validation.php
│   └── views
│       ├── auth
│       │   ├── activation.blade.php
│       │   ├── exceeded.blade.php
│       │   ├── login.blade.php
│       │   ├── passwords
│       │   │   ├── email.blade.php
│       │   │   └── reset.blade.php
│       │   └── register.blade.php
│       ├── emails
│       │   └── exception.blade.php
│       ├── errors
│       │   ├── 403.blade.php
│       │   ├── 404.blade.php
│       │   ├── 500.blade.php
│       │   └── 503.blade.php
│       ├── home.blade.php
│       ├── layouts
│       │   └── app.blade.php
│       ├── modals
│       │   ├── modal-delete.blade.php
│       │   ├── modal-form.blade.php
│       │   └── modal-save.blade.php
│       ├── pages
│       │   ├── admin
│       │   │   ├── active-users.blade.php
│       │   │   ├── home.blade.php
│       │   │   └── route-details.blade.php
│       │   ├── status.blade.php
│       │   └── user
│       │       └── home.blade.php
│       ├── panels
│       │   └── welcome-panel.blade.php
│       ├── partials
│       │   ├── errors.blade.php
│       │   ├── form-status.blade.php
│       │   ├── nav.blade.php
│       │   ├── search-users-form.blade.php
│       │   ├── socials-icons.blade.php
│       │   ├── socials.blade.php
│       │   ├── status-panel.blade.php
│       │   └── status.blade.php
│       ├── profiles
│       │   ├── edit.blade.php
│       │   └── show.blade.php
│       ├── scripts
│       │   ├── check-changed.blade.php
│       │   ├── datatables.blade.php
│       │   ├── delete-modal-script.blade.php
│       │   ├── form-modal-script.blade.php
│       │   ├── gmaps-address-lookup-api3.blade.php
│       │   ├── google-maps-geocode-and-map.blade.php
│       │   ├── save-modal-script.blade.php
│       │   ├── search-users.blade.php
│       │   ├── toggleStatus.blade.php
│       │   ├── tooltips.blade.php
│       │   └── user-avatar-dz.blade.php
│       ├── themesmanagement
│       │   ├── add-theme.blade.php
│       │   ├── edit-theme.blade.php
│       │   ├── show-theme.blade.php
│       │   └── show-themes.blade.php
│       ├── usersmanagement
│       │   ├── create-user.blade.php
│       │   ├── edit-user.blade.php
│       │   ├── show-deleted-user.blade.php
│       │   ├── show-deleted-users.blade.php
│       │   ├── show-user.blade.php
│       │   └── show-users.blade.php
│       └── welcome.blade.php
├── routes
│   ├── api.php
│   ├── channels.php
│   ├── console.php
│   └── web.php
├── server.php
├── webpack.mix.js
└── yarn.lock
```

* Tree command can be installed using brew: `brew install tree`
* File tree generated using command `tree -a -I '.git|node_modules|vendor|storage|tests'`

### Opening an Issue
Before opening an issue there are a couple of considerations:
* If you did not **star this repo** *I will close the issue immediatly without consideration.*
* **Read the instructions** and make sure all steps were *followed correctly*.
* **Check** that the issue is not *specific to the development environment* setup.
* **Provide** *duplication steps*.
* **Attempt to look into the issue**, and if you *have a solution, make a pull request*.
* **Show that you have made an attempt** to *look into the issue*.
* **Check** to see if the issue you are *reporting is a duplicate* of a previous reported issue.
* **Following these instructions show me that you have tried.**
* If you have a questions send me an email to jeremykenedy@gmail.com
* Please be considerate that this is an open source project that I provide to the community for FREE when opening an issue.

Open source projects are a the community’s responsibility to use, contribute, and debug.

### Laravel Auth License
Laravel-auth is licensed under the [MIT license](https://opensource.org/licenses/MIT). Enjoy!
