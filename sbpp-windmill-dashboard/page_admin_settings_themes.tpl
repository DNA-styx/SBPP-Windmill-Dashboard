<!-- Start Themes Page -->
<div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
        <div class="w-full">
            <div id="current-theme-holder">

                <p class="font-bold text-gray-700 dark:text-gray-400">Selected Theme: {$theme_name}</p>

                <table>
                    <tr>
                        <td>

                            <div id="current-theme-screenshot">
                                {$theme_screenshot}
                            </div>
                        </td>
                        <td>
                            <div id="current-theme-details">
                                <table>
                                    <tr>
                                        <td class="font-bold text-gray-700 dark:text-gray-400">Theme Author:</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div id="theme.auth" class="text-gray-700 dark:text-gray-400">
                                                {$theme_author}</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="font-bold text-gray-700 dark:text-gray-400">Theme Version:</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div id="theme.vers" class="text-gray-700 dark:text-gray-400">
                                                {$theme_version}</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="font-bold text-gray-700 dark:text-gray-400">Theme Link:</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div id="theme.link" class="text-gray-700 dark:text-gray-400">
                                                <a href="{$theme_link}" target="_new">{$theme_link}
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <div id="theme.apply"></div>
                                        </td>
                                    </tr>
                                </table>
                            </div>

                        </td>
                    </tr>
                </table>

            </div>
            <br>
            <br>
            <p class="font-bold text-gray-700 dark:text-gray-400">Available Themes</p>
            <span class="text-gray-700 dark:text-gray-400">
                Click a theme below to see details about it.
            </span>
            <br>
            <br>
            <div id="theme-list">
                <ul>
                    {foreach from=$theme_list item=theme}
                        <li class="text-gray-700 dark:text-gray-400">- <a href="javascript:void(0);"
                                onclick="javascript:xajax_SelTheme('{$theme.dir}');">{$theme.name}</a></li>
                    {/foreach}
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Themes Page -->