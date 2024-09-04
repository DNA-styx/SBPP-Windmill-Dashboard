<!DOCTYPE html>
<html :class="{ 'theme-dark': dark }" x-data="data()" lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>{$title}</title>
  <link rel="Shortcut Icon" href="themes/{$theme}/assets/images/favicon.ico">

  <!-- Start of custom colour options -->
  <!-- Ensure only one of the following css files are active  -->
  <!-- Comment out all the others -->  
  <!-- <link href="themes/{$theme}/assets/css/windmill-purple.css" rel="stylesheet" type="text/css"> -->
  <!--  <link href="themes/{$theme}/assets/css/windmill-custom.css" rel="stylesheet" type="text/css"> -->
  <link href="themes/{$theme}/assets/css/windmill-dark-red.css" rel="stylesheet" type="text/css">
  <!-- End of Custom colours -->

  <!-- SB++ default JS -->
  <script src="./scripts/mootools.js"></script>
  <script src="./scripts/contextMenoo.js"></script>
  <script src="./scripts/fontawesome-all.min.js"></script>
  <script src="./scripts/sourcebans.js"></script>
 
   <!-- Required non-Tailwind CSS -->
  <link href="themes/{$theme}/assets/css/sbpp-windmill-dashboard.css" rel="stylesheet" type="text/css">

  <!-- Windmill's default JS and CSS -->
  <!-- You need focus-trap.js to make the default Windmill modal accessible
  <script src="themes/{$theme}/assets/js/focus-trap.js" defer></script>  -->
  <script src="themes/{$theme}/assets/js/init-alpine.js"></script>
  <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
  <link rel="stylesheet" href="themes/{$theme}/assets/css/tailwind.output.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

  <!-- Anti bot enabled for just the live demo site -->
  {if $smarty.server.SERVER_NAME == "sourcebans.dnagames.site" }
    <script src="https://www.google.com/recaptcha/enterprise.js?render=6LewNzQqAAAAAKWK_0R-JpOOyVav0kgOw9oRftij"></script>
  {/if}

  {$xajax}
</head>