<!DOCTYPE html>
<html :class="{ 'theme-dark': dark }" x-data="data()" lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>{$title}</title>
  <link rel="Shortcut Icon" href="themes/{$theme}/images/favicon.ico">
  <script src="./scripts/fontawesome-all.min.js"></script>
  <script src="./scripts/sourcebans.js"></script>
  <!--        
<link href="themes/{$theme}/css/main.css" rel="stylesheet" type="text/css">
-->
  <!-- .css taken from main.css -->
  <link href="themes/{$theme}/css/sbpp-windmill-dashboard.css" rel="stylesheet" type="text/css">
  <!-- You need focus-trap.js to make the modal accessible -->
  <script src="themes/{$theme}/assets/js/focus-trap.js" defer></script>
  <script src="./scripts/mootools.js"></script>
  <script src="./scripts/contextMenoo.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="themes/{$theme}/assets/css/tailwind.output.css">
  <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
  <script src="themes/{$theme}/assets/js/init-alpine.js"></script>
  {$xajax}
</head>