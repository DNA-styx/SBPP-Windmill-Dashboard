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

            <p class="font-bold text-gray-700 dark:text-gray-400">Available Themes</p>
            <span class="mb-4 text-gray-700 dark:text-gray-400">
                Click a theme below to see details about it.
            </span>

            <div id="theme-list">
                <ul>
                    {foreach from=$theme_list item=theme}
                        <li class="text-gray-700 dark:text-gray-400">- <a href="javascript:void(0);"
                                onclick="javascript:xajax_SelTheme('{$theme.dir}');">{$theme.name}</a></li>
                    {/foreach}
                </ul>
            </div>
            <p id="theme.apply"></p>
        </div>
    </div>
</div>
<!-- End Themes Page -->