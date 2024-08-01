      <!-- Start navbar.tpl -->
      <!-- Desktop sidebar -->
<aside
    class="z-20 flex-shrink-0 hidden w-64 overflow-y-auto bg-white dark:bg-gray-800 md:block"
    >
    <div class="py-4 text-gray-500 dark:text-gray-400">
          <a
            class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200"
            href="#"
          >
          {Config::get('template.title')}
          </a>

        <ul class="mt-6">
            {foreach from=$navbar item=nav}
                <li class="relative px-6 py-3">
                <a
                    class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                    href="index.php?p={$nav.endpoint}" 
                    title="{$nav.title}::{$nav.description}"
                >
                <i class="fa fa-chevron-right" aria-hidden="true"></i><span class="ml-4">{$nav.title}</span>
                </a>
                </li>
            {/foreach}

            {if $isAdmin}

                {foreach from=$adminbar item=admin}
                    <li class="relative px-6 py-3">
                    <a
                        class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                        href="index.php?p=admin&c={$admin.endpoint}" 
                        title="{$nav.title}::{$nav.description}"
                    >
                    &nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i><span class="ml-4">{$admin.title}</span>
                    </a>
                    </li>
                {/foreach}
            {/if}

            {if $login}
    
                <li class="relative px-6 py-3">
                <a
                    class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                    href="index.php?p=account"
                >
                <i class="fa fa-chevron-right" aria-hidden="true"></i> <span class="ml-4">{$username}</span>
                </a>
                </li>
                
                <li class="relative px-6 py-3">
                <a
                    class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                    href="index.php?p=logout"
                >
                <i class="fa fa-chevron-right" aria-hidden="true"></i> <span class="ml-4">Logout</span>
                </a>
                </li>

            {else}
    
                <li class="relative px-6 py-3">
                <a
                    class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                    href="index.php?p=login"
                >
                <i class="fa fa-chevron-right" aria-hidden="true"></i><span class="ml-4">Login</span>
                </a>
                </li>

            {/if}
       </ul>

    </div>
</aside>
      <!-- Start Mobile sidebar -->
      <!-- Backdrop -->
      <div
        x-show="isSideMenuOpen"
        x-transition:enter="transition ease-in-out duration-150"
        x-transition:enter-start="opacity-0"
        x-transition:enter-end="opacity-100"
        x-transition:leave="transition ease-in-out duration-150"
        x-transition:leave-start="opacity-100"
        x-transition:leave-end="opacity-0"
        class="fixed inset-0 z-10 flex items-end bg-black bg-opacity-50 sm:items-center sm:justify-center"
      ></div>
      <aside
        class="fixed inset-y-0 z-20 flex-shrink-0 w-64 mt-16 overflow-y-auto bg-white dark:bg-gray-800 md:hidden"
        x-show="isSideMenuOpen"
        x-transition:enter="transition ease-in-out duration-150"
        x-transition:enter-start="opacity-0 transform -translate-x-20"
        x-transition:enter-end="opacity-100"
        x-transition:leave="transition ease-in-out duration-150"
        x-transition:leave-start="opacity-100"
        x-transition:leave-end="opacity-0 transform -translate-x-20"
        @click.away="closeSideMenu"
        @keydown.escape="closeSideMenu"
      >
        <div class="py-4 text-gray-500 dark:text-gray-400">
          <a
            class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200"
            href="#"
          >
          {Config::get('template.title')}
          </a>
          <ul class="mt-6">

          

          {foreach from=$navbar item=nav}
            <li class="relative px-6 py-3">
            <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="index.php?p={$nav.endpoint}" title="{$nav.title}::{$nav.description}"
            >
                <i class="fa fa-chevron-right" aria-hidden="true"></i><span class="ml-4">{$nav.title}</span>
            </a>
            </li>
        {/foreach}

    {if $isAdmin}

        {foreach from=$adminbar item=admin}
            <li class="relative px-6 py-3">
            <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="index.php?p=admin&c={$admin.endpoint}" title="{$nav.title}::{$nav.description}"
            >
            &nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-chevron-right" aria-hidden="true"></i><span class="ml-4">{$admin.title}</span>
            </a>
            </li>
        {/foreach}
    {/if}

    {if $login}

        <li class="relative px-6 py-3">
        <a
            class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
            href="index.php?p=account"
        >
        <i class="fa fa-chevron-right" aria-hidden="true"></i> <span class="ml-4">{$username}</span>
        </a>
        </li>

         
        <li class="relative px-6 py-3">
        <a
            class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
            href="index.php?p=logout"
        >
        <i class="fa fa-chevron-right" aria-hidden="true"></i> <span class="ml-4">Logout</span>
        </a>
        </li>

    {else}

        <li class="relative px-6 py-3">
        <a
            class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
            href="index.php?p=login"
        >
        <i class="fa fa-chevron-right" aria-hidden="true"></i><span class="ml-4">Login</span>
        </a>
        </li>

   {/if}

            
          </ul>
        </div>
      </aside>

      <!-- End side navbar -->
      