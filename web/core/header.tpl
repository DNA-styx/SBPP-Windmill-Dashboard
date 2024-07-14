<!DOCTYPE html>
<html :class="{ 'theme-dark': dark }" x-data="data()" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>{$title}</title>
        <link rel="Shortcut Icon" href="themes/{$theme}/images/favicon.ico">
        <script type="text/javascript" src="./scripts/fontawesome-all.min.js"></script>
        <script type="text/javascript" src="./scripts/sourcebans.js"></script>
        <link xhref="themes/{$theme}/css/main.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="./scripts/mootools.js"></script>
        <script type="text/javascript" src="./scripts/contextMenoo.js"></script>
 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link
          href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
          rel="stylesheet"
        />
        <link rel="stylesheet" href="themes/{$theme}/assets/css/tailwind.output.css">
        <script
          src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
          defer
        ></script>
        <script src="themes/{$theme}/assets/js/init-alpine.js"></script>
 
 
 
        {$xajax}
    </head>
    <body>
    <div
      class="flex h-screen bg-gray-50 dark:bg-gray-900"
      :class="{ 'overflow-hidden': isSideMenuOpen}"
    >
