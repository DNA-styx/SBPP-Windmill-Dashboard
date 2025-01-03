<!-- Start navbar.tpl -->
<!-- Start Body -->

<body>
    <div class="flex h-screen bg-gray-50 dark:bg-gray-900" :class="{ 'overflow-hidden': isSideMenuOpen}">
        <!-- Desktop sidebar -->
        <aside class="z-20 flex-shrink-0 hidden w-64 overflow-y-auto bg-white dark:bg-gray-800 md:block">
            <div class="py-4 text-gray-500 dark:text-gray-400">
                <a class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200" href="/">
                    {Config::get('template.title')}
                </a>
                <ul class="mt-6">
                    {foreach from=$navbar item=nav}
                        <li class="relative px-6 py-3">
                            <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                                href="index.php?p={$nav.endpoint}" title="{$nav.title}::{$nav.description}">
                                <i class="fa fa-caret-right" aria-hidden="true"></i><span class="ml-4">{$nav.title}</span>
                            </a>
                        </li>
                    {/foreach}
                    {if $isAdmin}
                        {foreach from=$adminbar item=admin}
                            <li class="relative px-6 py-3">
                                <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                                    href="index.php?p=admin&c={$admin.endpoint}" title="{$nav.title}::{$nav.description}">
                                    &nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-right" aria-hidden="true"></i><span
                                        class="ml-4">{$admin.title}</span>
                                </a>
                            </li>
                        {/foreach}
                    {/if}
                    {if $login}
                        <li class="relative px-6 py-3">
                            <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                                href="index.php?p=account">
                                <i class="fa fa-caret-right" aria-hidden="true"></i> <span class="ml-4">{$username}</span>
                            </a>
                        </li>
                        <li class="relative px-6 py-3">
                            <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                                href="index.php?p=logout">
                                <i class="fa fa-caret-right" aria-hidden="true"></i> <span class="ml-4">Logout</span>
                            </a>
                        </li>
                    {else}
                        <li class="relative px-6 py-3">
                            <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                                href="index.php?p=login">
                                <i class="fa fa-caret-right" aria-hidden="true"></i><span class="ml-4">Login</span>
                            </a>
                        </li>
                    {/if}
                </ul>
            </div>
        </aside>
        <!-- Start Mobile sidebar -->
        <!-- Backdrop -->
        <div x-show="isSideMenuOpen" x-transition:enter="transition ease-in-out duration-150"
            x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100"
            x-transition:leave="transition ease-in-out duration-150" x-transition:leave-start="opacity-100"
            x-transition:leave-end="opacity-0"
            class="fixed inset-0 z-10 flex items-end bg-black bg-opacity-50 sm:items-center sm:justify-center"></div>
        <aside class="fixed inset-y-0 z-20 flex-shrink-0 w-64 mt-16 overflow-y-auto bg-white dark:bg-gray-800 md:hidden"
            x-show="isSideMenuOpen" x-transition:enter="transition ease-in-out duration-150"
            x-transition:enter-start="opacity-0 transform -translate-x-20" x-transition:enter-end="opacity-100"
            x-transition:leave="transition ease-in-out duration-150" x-transition:leave-start="opacity-100"
            x-transition:leave-end="opacity-0 transform -translate-x-20" @click.away="closeSideMenu"
            @keydown.escape="closeSideMenu">
            <div class="py-4 text-gray-500 dark:text-gray-400">
                <a class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200" href="/">
                    {Config::get('template.title')}
                </a>
                <ul class="mt-6">
                    {foreach from=$navbar item=nav}
                        <li class="relative px-6 py-3">
                            <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                                href="index.php?p={$nav.endpoint}" title="{$nav.title}::{$nav.description}">
                                <i class="fa fa-caret-right" aria-hidden="true"></i><span class="ml-4">{$nav.title}</span>
                            </a>
                        </li>
                    {/foreach}
                    {if $isAdmin}
                        {foreach from=$adminbar item=admin}
                            <li class="relative px-6 py-3">
                                <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                                    href="index.php?p=admin&c={$admin.endpoint}" title="{$nav.title}::{$nav.description}">
                                    &nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-caret-right" aria-hidden="true"></i><span
                                        class="ml-4">{$admin.title}</span>
                                </a>
                            </li>
                        {/foreach}
                    {/if}
                    {if $login}
                        <li class="relative px-6 py-3">
                            <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                                href="index.php?p=account">
                                <i class="fa fa-caret-right" aria-hidden="true"></i> <span class="ml-4">{$username}</span>
                            </a>
                        </li>
                        <li class="relative px-6 py-3">
                            <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                                href="index.php?p=logout">
                                <i class="fa fa-caret-right" aria-hidden="true"></i> <span class="ml-4">Logout</span>
                            </a>
                        </li>
                    {else}
                        <li class="relative px-6 py-3">
                            <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                                href="index.php?p=login">
                                <i class="fa fa-caret-right" aria-hidden="true"></i><span class="ml-4">Login</span>
                            </a>
                        </li>
                    {/if}
                </ul>
            </div>
        </aside>
        <!-- End side navbar -->

        <!-- Start Top Nav Bar -->
        <div class="flex flex-col flex-1 w-full">
            <header class="z-10 py-4 bg-white shadow-md dark:bg-gray-800">
                <div class="container flex items-center justify-between h-full px-6 mx-auto">
                    <!-- Mobile hamburger -->
                    <button
                        class="p-1 mr-5 -ml-1 rounded-md md:hidden focus:outline-none text-gray-500 dark:text-gray-400 hover:text-gray-800 dark:hover:text-gray-200"
                        @click="toggleSideMenu" aria-label="Menu">
                        <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd"
                                d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
                                clip-rule="evenodd"></path>
                        </svg>
                    </button>

                    <!-- Search input -->

                    <div class="hidden md:block">
                        <div class="flex justify-center flex-1 lg:mr-32">
                            <form action="index.php" method="GET">
                                <div class="relative w-full max-w-xl mr-6">
                                    <div
                                        class="absolute inset-y-0 flex items-center pl-2 text-gray-500 dark:text-gray-400">
                                        <i class="fas fa-search"></i>
                                    </div>
                                    <input type="hidden" id="comms_search" name="Submit" value="comms_search">
                                    <input type="hidden" id="comms_search_qs" name="p" value="commslist">
                                    <input
                                        class="w-full pl-8 pr-2 text-sm text-gray-700 placeholder-gray-600 bg-gray-100 border-0 rounded-md dark:placeholder-gray-500 dark:focus:shadow-outline-gray dark:focus:placeholder-gray-600 dark:bg-gray-700 dark:text-gray-200 focus:placeholder-gray-500 focus:bg-white focus:border-purple-300 focus:outline-none focus:shadow-outline-purple form-input"
                                        type="text" placeholder="Search comms..." aria-label="Search" name="searchText">
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="flex justify-center flex-1 lg:mr-32">
                        <form action="index.php" method="GET">
                            <div class="relative w-full max-w-xl mr-6">
                                <div class="absolute inset-y-0 flex items-center pl-2 text-gray-500 dark:text-gray-400">
                                    <i class="fas fa-search"></i>
                                </div>
                                <input type="hidden" id="bans_search" name="Submit" value="bans_search">
                                <input type="hidden" id="ban_search_qs" name="p" value="banlist">
                                <input
                                    class="w-full pl-8 pr-2 text-sm text-gray-700 placeholder-gray-600 bg-gray-100 border-0 rounded-md dark:placeholder-gray-500 dark:focus:shadow-outline-gray dark:focus:placeholder-gray-600 dark:bg-gray-700 dark:text-gray-200 focus:placeholder-gray-500 focus:bg-white focus:border-purple-300 focus:outline-none focus:shadow-outline-purple form-input"
                                    type="text" placeholder="Search bans..." aria-label="Search" name="searchText">
                            </div>
                        </form>
                    </div>

                    <ul class="flex items-center flex-shrink-0 space-x-6">

                       {include file="themes/{$theme}/assets/navbar_links.conf" scope="parent"}

                        <!-- Links menu -->
                        <li class="relative">
                            <button
                                class="relative align-middle rounded-md focus:outline-none text-gray-500 dark:text-gray-400 hover:text-gray-800 dark:hover:text-gray-200"
                                @click="toggleNotificationsMenu" @keydown.escape="closeNotificationsMenu"
                                aria-label="Notifications" aria-haspopup="true">
                                Links
                            </button>
                            <template x-if="isNotificationsMenuOpen">
                                <ul x-transition:leave="transition ease-in duration-150"
                                    x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"
                                    @click.away="closeNotificationsMenu" @keydown.escape="closeNotificationsMenu"
                                    class="absolute right-0 w-56 p-2 mt-2 space-y-2 text-gray-600 bg-white border border-gray-100 rounded-md shadow-md dark:text-gray-300 dark:border-gray-700 dark:bg-gray-700"
                                    aria-label="submenu">

                                {foreach from=$link_array item=link_item}
                                    <li class="flex">
                                        <a class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                                            href="{$link_item.1}">
                                            {$link_item.0}
                                        </a>
                                    </li>
                                {/foreach}
                                {if $isAdmin}
                                    <li class="flex">
                                        <a class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                                            href="index.php?p=admin">
                                            Admin Panel
                                        </a>
                                    </li>
                                {/if}
                                {if $login}
                                    <li class="flex">
                                        <a class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                                            href="index.php?p=logout">
                                            Logout
                                        </a>
                                    </li>
                                {else}
                                    <li class="flex">
                                        <a class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                                            href="index.php?p=login">
                                            Login
                                        </a>
                                    </li>
                                {/if}

                                </ul>
                            </template>
                        </li>

                        <!-- start Theme toggler -->
                        <li class="flex">
                            <button
                                class="rounded-md focus:outline-none text-gray-500 dark:text-gray-400 hover:text-gray-800 dark:hover:text-gray-200"
                                @click="toggleTheme" aria-label="Toggle color mode">
                                <template x-if="!dark">
                                    <svg class="w-5 h-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M17.293 13.293A8 8 0 016.707 2.707a8.001 8.001 0 1010.586 10.586z">
                                        </path>
                                    </svg>
                                </template>
                                <template x-if="dark">
                                    <svg class="w-5 h-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd"
                                            d="M10 2a1 1 0 011 1v1a1 1 0 11-2 0V3a1 1 0 011-1zm4 8a4 4 0 11-8 0 4 4 0 018 0zm-.464 4.95l.707.707a1 1 0 001.414-1.414l-.707-.707a1 1 0 00-1.414 1.414zm2.12-10.607a1 1 0 010 1.414l-.706.707a1 1 0 11-1.414-1.414l.707-.707a1 1 0 011.414 0zM17 11a1 1 0 100-2h-1a1 1 0 100 2h1zm-7 4a1 1 0 011 1v1a1 1 0 11-2 0v-1a1 1 0 011-1zM5.05 6.464A1 1 0 106.465 5.05l-.708-.707a1 1 0 00-1.414 1.414l.707.707zm1.414 8.486l-.707.707a1 1 0 01-1.414-1.414l.707-.707a1 1 0 011.414 1.414zM4 11a1 1 0 100-2H3a1 1 0 000 2h1z"
                                            clip-rule="evenodd"></path>
                                    </svg>
                                </template>
                            </button>
                        </li>
                        <!-- end Theme toggler -->

                    </ul>
 
                </div>
            </header>
            <!--             </div>  this is a missing div, but it breaks stuff -->
            <!-- end header -->

            <!-- End Top Nav Bar -->

<!-- End navbar.tpl -->