<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|   example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|   http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|   $route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|   $route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|   $route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples: my-controller/index -> my_controller/index
|       my-controller/my-method -> my_controller/my_method
*/

$route['default_controller'] = 'website';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['admin']  = "admin/home";
// Misc controller rewrites
$route['admin/access_denied']  = "admin/misc/access_denied";
$route['admin/not_found']  = "admin/misc/not_found";

// Staff rewrites
$route['admin/profile']  = "admin/staff/profile";
$route['admin/profile/(:num)']  = "admin/staff/profile/$1";
$route['admin/tasks/view/(:any)']  = "admin/tasks/index/$1";


/* Clients links and routes */
// // In case if client access directly to url without the arguments redirect to clients url
$route['login'] = "User/login";
$route['/']  = "User";
$route['artists/overview']  = "User/whyArtists";
$route['artists/how-it-works']  = "User/howItWorksArtists";
$route['artists/signup']  = "User/artists_signup"; // added by prakash
$route['artists/login']  = "User/artists_login"; // added by prakash
$route['artists/logout']  = "User/logout"; // added by prakash
$route['artists/profile']  = "User/artists_profile"; // added by prakash

$route['producer/login']  = "User/producer_login"; // added by prakash
$route['producer/overview']  = "User/whyProducers";
$route['producer/signup']  = "User/producer_signup";
$route['producer/how-it-works']  = "User/howItWorksProducers";
$route['producer/profile']  = "User/producer_profile";

$route['projects/create']  = "project/projects_add"; // added by prakash
$route['projects/summary']  = "User/projects_summary"; // added by prakash

$route['viewinvoice/(:num)/(:any)']  = "clients/viewinvoice/$1/$2";

$route['knowledge_base/(:any)']  = "clients/knowledge_base/$1";

$route['knowledge-base/(:any)']  = "clients/knowledge_base/$1";
