<!-- start servers adminlist page -->
<div
    class="flex items-center justify-between p-4 mb-8 text-sm px-4 py-3 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <div class="flex items-center text-gray-600 dark:text-gray-400">
        <span>
            Admins enabled ({$admin_count})
        </span>
    </div>
    <div class="flex items-center text-gray-600 dark:text-gray-400">
        Click on the admin's name to see if they are currently playing
    </div>
</div>

<div id="mainwrapper" class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
    <div class="w-full overflow-x-auto">
        <table class="w-full whitespace-no-wrap">
            <tr
                class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                <td class="px-4 py-3">Admin Name</td>
                <td class="px-4 py-3">Admin SteamID</td>
            </tr>
            {foreach from=$admin_list item=admin}
                {if $admin.user}
                    <tr
                        class="opener text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                        <td class="px-4 py-3 listtable_1{if $admin.ingame}_unbanned{/if}">{$admin.user|escape:'html'}</td>
                        <td class="px-4 py-3 listtable_1{if $admin.ingame}_unbanned{/if}">{$admin.authid}</td>
                    </tr>
                    <tr
                        class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                        <td colspan="7" align="center">
                            <div class="opener">
                                {if $admin.ingame}
                                    <table width="80%" cellspacing="0" cellpadding="0" class="listtable">
                                        <tr
                                            class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                            <td class="px-4 py-3" colspan="5">
                                                Admin Details Ingame
                                            </td>
                                        </tr>
                                        <tr
                                            class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                            <td class="px-4 py-3">Name</td>
                                            <td class="px-4 py-3">Steam ID</td>
                                            <td class="px-4 py-3">IP</td>
                                        </tr>
                                        <tr
                                            class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                            <td class="px-4 py-3">
                                                {$admin.iname|escape:'html'}
                                            </td>
                                            <td class="px-4 py-3">
                                                {$admin.authid}
                                            </td>
                                            <td class="px-4 py-3">
                                                {$admin.iip}
                                            </td>
                                        </tr>
                                    </table>
                                {/if}
                            </div>
                        </td>
                    </tr>
                {/if}
            {/foreach}
        </table>
    </div>
</div>
<script>
    InitAccordion('tr.opener', 'div.opener', 'mainwrapper');
</script>
<!-- end servers adminlist page -->