<!-- Start Themes Page -->
<div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
        <div class="w-full">

            <div class="current-theme-holder mx-auto mt-11 w-80 transform overflow-hidden">

                <div class="object-cover transform scale-150" id="current-theme-screenshot">{$theme_screenshot}</div>

                <div id="current-theme-details" class="p-4 text-gray-700 dark:text-gray-400">
                    <h2 class="mb-2 text-lg font-semibold text-gray-700 dark:text-gray-400">Selected Theme:
                        {$theme_name}</h2>
                    <p>
                        <span class="font-semibold">Theme Author:</span> <span id="theme.auth">{$theme_author}</span>
                    </p>
                    <p>
                        <span class="font-semibold">Theme Version:</span> <span id="theme.vers">{$theme_version}</span>
                    </p>
                    <p>
                        <span class="font-semibold">Theme Link:</span> <span id="theme.link"><a href="{$theme_link}">{$theme_link}</a></span>
                    </p>
                </div>
            </div>

            <div class="p-2 mt-2 space-y-2 text-gray-600 bg-white border border-gray-100 rounded-md shadow-md dark:text-gray-300 dark:border-gray-700 dark:bg-gray-700">
            <p class="font-bold text-gray-700 dark:text-gray-400">Available Themes</p>
            <span class="mb-4 text-gray-700 dark:text-gray-400">Click a theme below to see details about it.</span>

            <div id="theme-list">
                <ul>
                    {foreach from=$theme_list item=theme}
                        <li class="flex"><a href="javascript:void(0);"
                                class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md text-gray-700 dark:text-gray-400 hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200" 
                                onclick="javascript:xajax_SelTheme('{$theme.dir}');">{$theme.name}</a>
                        </li>
                    {/foreach}
                </ul>
            </div>
            <p id="theme.apply"></p>
        </div>
            </div>
    </div>
</div>
<!-- End Themes Page -->