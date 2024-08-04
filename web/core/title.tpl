<!-- Start Top Nav Bar -->
<div class="flex flex-col flex-1 w-full">
<header class="z-10 py-4 bg-white shadow-md dark:bg-gray-800">
  <div
    class="container flex items-center justify-between h-full px-6 mx-auto text-purple-600 dark:text-purple-300"
  >
    <!-- Mobile hamburger -->
    <button
      class="p-1 mr-5 -ml-1 rounded-md md:hidden focus:outline-none focus:shadow-outline-purple"
      @click="toggleSideMenu"
      aria-label="Menu"
    >
      <svg
        class="w-6 h-6"
        aria-hidden="true"
        fill="currentColor"
        viewBox="0 0 20 20"
      >
        <path
          fill-rule="evenodd"
          d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
          clip-rule="evenodd"
        ></path>
      </svg>
    </button>

    <!-- Search input -->
<!--
    <div class="flex justify-center flex-1 lg:mr-32">
    <form action="index.php" method="GET">
      <div
        class="relative w-full max-w-xl mr-6 focus-within:text-purple-500"
      >
        <div class="absolute inset-y-0 flex items-center pl-2">
          <i class="fa-solid fa-magnifying-glass"></i>
        </div>
        <input type="hidden" id="Submit" name="Submit" value="search">
        <input type="hidden" id="p" name="p" value="commslist">
        <input
          class="w-full pl-8 pr-2 text-sm text-gray-700 placeholder-gray-600 bg-gray-100 border-0 rounded-md dark:placeholder-gray-500 dark:focus:shadow-outline-gray dark:focus:placeholder-gray-600 dark:bg-gray-700 dark:text-gray-200 focus:placeholder-gray-500 focus:bg-white focus:border-purple-300 focus:outline-none focus:shadow-outline-purple form-input"
          type="text"
          placeholder="Search comms..."
          aria-label="Search"
          name="searchText"
        >
      </div>
      </form>
    </div>
-->
<div class="flex justify-center flex-1 lg:mr-32">
  <form action="index.php" method="GET">
    <div class="relative w-full max-w-xl mr-6 focus-within:text-purple-500">
      <div class="absolute inset-y-0 flex items-center pl-2">
        <i class="fa-solid fa-magnifying-glass"></i>
      </div>
      <input type="hidden" id="Submit" name="Submit" value="search">
      <input type="hidden" id="p" name="p" value="banlist">
      <input
        class="w-full pl-8 pr-2 text-sm text-gray-700 placeholder-gray-600 bg-gray-100 border-0 rounded-md dark:placeholder-gray-500 dark:focus:shadow-outline-gray dark:focus:placeholder-gray-600 dark:bg-gray-700 dark:text-gray-200 focus:placeholder-gray-500 focus:bg-white focus:border-purple-300 focus:outline-none focus:shadow-outline-purple form-input"
        type="text" placeholder="Search bans..." aria-label="Search" name="searchText">
    </div>
  </form>
</div>
<!--
    <div class="flex justify-center">
    <div>
      <div>
        <input 
        class="w-full pl-8 pr-2 text-sm text-gray-700 placeholder-gray-600 bg-gray-100 border-0 rounded-md dark:placeholder-gray-500 dark:focus:shadow-outline-gray dark:focus:placeholder-gray-600 dark:bg-gray-700 dark:text-gray-200 focus:placeholder-gray-500 focus:bg-white focus:border-purple-300 focus:outline-none focus:shadow-outline-purple form-input" 
        placeholder="Search" 
        >
      </div>
    </div>
    <select class="select select-bordered join-item">
      <option disabled selected>Filter</option>
      <option>Bans</option>
      <option>Comms</option>
    </select>
      <button class="btn join-item">Search</button>
  </div>
-->

    <ul class="flex items-center flex-shrink-0 space-x-6">
      <!-- Theme toggler -->
      <li class="flex">
        <button
          class="rounded-md focus:outline-none focus:shadow-outline-purple"
          @click="toggleTheme"
          aria-label="Toggle color mode"
        >
          <template x-if="!dark">
            <svg
              class="w-5 h-5"
              aria-hidden="true"
              fill="currentColor"
              viewBox="0 0 20 20"
            >
              <path
                d="M17.293 13.293A8 8 0 016.707 2.707a8.001 8.001 0 1010.586 10.586z"
              ></path>
            </svg>
          </template>
          <template x-if="dark">
            <svg
              class="w-5 h-5"
              aria-hidden="true"
              fill="currentColor"
              viewBox="0 0 20 20"
            >
              <path
                fill-rule="evenodd"
                d="M10 2a1 1 0 011 1v1a1 1 0 11-2 0V3a1 1 0 011-1zm4 8a4 4 0 11-8 0 4 4 0 018 0zm-.464 4.95l.707.707a1 1 0 001.414-1.414l-.707-.707a1 1 0 00-1.414 1.414zm2.12-10.607a1 1 0 010 1.414l-.706.707a1 1 0 11-1.414-1.414l.707-.707a1 1 0 011.414 0zM17 11a1 1 0 100-2h-1a1 1 0 100 2h1zm-7 4a1 1 0 011 1v1a1 1 0 11-2 0v-1a1 1 0 011-1zM5.05 6.464A1 1 0 106.465 5.05l-.708-.707a1 1 0 00-1.414 1.414l.707.707zm1.414 8.486l-.707.707a1 1 0 01-1.414-1.414l.707-.707a1 1 0 011.414 1.414zM4 11a1 1 0 100-2H3a1 1 0 000 2h1z"
                clip-rule="evenodd"
              ></path>
            </svg>
          </template>
        </button>
      </li>
      <!-- Notifications menu -->
      <li class="relative">
        <button
          class="relative align-middle rounded-md focus:outline-none focus:shadow-outline-purple"
          @click="toggleNotificationsMenu"
          @keydown.escape="closeNotificationsMenu"
          aria-label="Notifications"
          aria-haspopup="true"
        >
          <i class="fas fa-bell"></i>
          <!-- Notification badge -->
          <span
            aria-hidden="true"
            class="absolute top-0 right-0 inline-block w-3 h-3 transform translate-x-1 -translate-y-1 bg-red-600 border-2 border-white rounded-full dark:border-gray-800"
          ></span>
        </button>
        <template x-if="isNotificationsMenuOpen">
          <ul
            x-transition:leave="transition ease-in duration-150"
            x-transition:leave-start="opacity-100"
            x-transition:leave-end="opacity-0"
            @click.away="closeNotificationsMenu"
            @keydown.escape="closeNotificationsMenu"
            class="absolute right-0 w-56 p-2 mt-2 space-y-2 text-gray-600 bg-white border border-gray-100 rounded-md shadow-md dark:text-gray-300 dark:border-gray-700 dark:bg-gray-700"
            aria-label="submenu"
          >
            <li class="flex">
              <a
                class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                href="#"
              >
              <button class="btn" onclick="Credits.showModal()">Credits</button>

              </a>

<!-- Open the modal using ID.showModal() method -->

<dialog id="Credits" class="modal modal-bottom sm:modal-middle">
  <div class="modal-box">
    <h3 class="text-lg font-bold">Hello!</h3>
    <p class="py-4">Press ESC key or click the button below to close</p>
    <div class="modal-action">
      <form method="dialog">
        <!-- if there is a button in form, it will close the modal -->
        <button class="btn">Close</button>
      </form>
    </div>
  </div>
</dialog>



              </li>
            <li class="flex">
              <a
                class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                href="#"
              >
                <span>Sales</span>
                <span
                  class="inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-red-600 bg-red-100 rounded-full dark:text-red-100 dark:bg-red-600"
                >
                  2
                </span>
              </a>
            </li>
            <li class="flex">
              <a
                class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                href="#"
              >
                <span>Alerts</span>
              </a>
            </li>
          </ul>
        </template>
      </li>
      <!-- Profile menu -->
      <li class="relative">
        <button
          class="align-middle rounded-full focus:shadow-outline-purple focus:outline-none"
          @click="toggleProfileMenu"
          @keydown.escape="closeProfileMenu"
          aria-label="Account"
          aria-haspopup="true"
        >
        <i class="fas fa-user-circle"></i>
        </button>
        <template x-if="isProfileMenuOpen">
        <ul
            x-transition:leave="transition ease-in duration-150"
            x-transition:leave-start="opacity-100"
            x-transition:leave-end="opacity-0"
            @click.away="closeProfileMenu"
            @keydown.escape="closeProfileMenu"
            class="absolute right-0 w-56 p-2 mt-2 space-y-2 text-gray-600 bg-white border border-gray-100 rounded-md shadow-md dark:border-gray-700 dark:text-gray-300 dark:bg-gray-700"
            aria-label="submenu"
          >

          {if $login}

             <li class="flex">
              <a
                class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                href="index.php?p=account"
              >
                <span class="w-4 h-4 mr-3"><i class="far fa-user"></i></span>
                <span>Account Settings</span>
              </a>
            </li>
            <li class="flex">
              <a
                class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                href="index.php?p=admin"
              >
              <span class="w-4 h-4 mr-3"><i class="fas fa-cog"></i></span>
                <span>Admin Panel</span>
              </a>
            </li>
            <li class="flex">
              <a
                class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                href="index.php?p=logout"
              >
              <span class="w-4 h-4 mr-3"><i class="fas fa-sign-out-alt"></i></span>
                <span>Sign out</span>
              </a>
            </li>
          </ul>

          {else}
        
            <li class="flex">
            <a
              class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
              href="index.php?p=login"
            >
              <span class="w-4 h-4 mr-3"><i class="fas fa-sign-in-alt"></i></span>
              <span>Log in</span>
            </a>
          </li>
        
        {/if}

        </ul>
        </template>
      </li>
    </ul>
  </div>
</header>
<!-- end header -->

<!-- End Top Nav Bar -->

<!-- start body -->
<main class="h-full pb-16 overflow-y-auto">
<div class="container px-6 mx-auto grid">

<br>
<div
class="flex items-center justify-between p-4 mb-8 text-xl font-semibold text-purple-100 bg-purple-600 rounded-lg shadow-md focus:outline-none focus:shadow-outline-purple"
>
  <div class="flex items-center">
  {$title}
  </div>
</div>

<!--
<br> 
<br> 
<br> 

  <h2
    class="my-6 text-2xl font-semibold text-gray-700 dark:text-gray-200"
  >
  {$title}
  </h2>



-->

<!-- Default pop-up box -->
  <div id="dialog-placement" style="vertical-align:middle;display:none;opacity:0;text-align:center;width:892px;margin:0 auto;position:fixed !important;position:absolute;overflow:hidden;top:100px;left:100px;">
  <table width="460px" id="dialog-holder" class="dialog-holder" border="0" cellspacing="0" cellpadding="0" >
      <tbody>
      <tr>
          <td class="box-content">
              <h2 align="left" id="dialog-title" class="ok"></h2>
              <div class="dialog-content" align="left">
                  <div class="dialog-body">
                      <div class="clearfix">
                          <div style="float: left; margin-right: 15px;" id="dialog-icon" class="icon-info">&nbsp;</div>
                          <div style="width:360px;float: right; padding-bottom: 5px; font-size: 11px;" id="dialog-content-text"></div>
                      </div>
                  </div>
                  <div class="dialog-control" id="dialog-control">
                  </div>
              </div>
          </td>
      </tr>
      </tbody>
  </table>
</div>

<!--
<div id="breadcrumb">
    {foreach from=$breadcrumb item=crumb}
        &raquo; <a href="{$crumb.url}">{$crumb.title}</a>
    {/foreach}
</div>
<div id="content">
-->

<!-- End title.tpl -->