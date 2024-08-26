<!-- start admin edit admins servers page -->
<form action="" method="post">
    <div id="admin-page-content">
        <div id="add-group">

            <div class="px-4 py-3 mb-2 bg-white rounded-lg shadow-md dark:bg-gray-800" id="add-group1">
                <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
                    <div class="w-full">

                        <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Admin Server Access</h4>
                        <span class="text-gray-700 dark:text-gray-400">
                            Please select the servers and/or groups of servers you want this admin to have access to.
                        </span>
                        <br><br>
                        <table class="w-full whitespace-no-wrap">
                            {if $row_count < 1}
                                <tr
                                    class="text-sm font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                    <td colspan="3" class=""><b><i>You need to add a server or a server group, before you
                                                can setup admin server permissions</i></b></td>
                                </tr>
                            {else}
                                <tr
                                    class="text-sm font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                    <td colspan="3" class="tablerow4"><i>Server Groups</i></td>
                                </tr>
                                {foreach from=$group_list item="group"}
                                    <tr
                                        class="text-sm font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                        <td colspan="2" class="tablerow1">{$group.name}</td>
                                        <td align="center" class="tablerow1"><input type="checkbox" id="group_{$group.gid}"
                                                name="group[]" value="g{$group.gid}" onclick=""
                                                class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                        </td>
                                    </tr>
                                {/foreach}
                                <tr
                                    class="text-sm font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                    <td colspan="3" class="tablerow4"><i>Servers</i></td>
                                </tr>
                                {foreach from=$server_list item="server"}
                                    <tr
                                        class="text-sm font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                        <td colspan="2" class="tablerow1" id="host_{$server.sid}">Please Wait...</td>
                                        <td align="center" class="tablerow1">
                                            <input type="checkbox" name="servers[]" id="server_{$server.sid}"
                                                value="s{$server.sid}" onclick=""
                                                class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                        </td>
                                    </tr>
                                {/foreach}
                            {/if}
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="flex items-center">
                                    {if $row_count > 0}
                                        {sb_button text="Save Changes" class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="editadminserver" submit=true}
                                        &nbsp;
                                    {/if}
                                    {sb_button text="Back" onclick="history.go(-1)" class="cancel block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="aback"}
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <script>
                {foreach from=$assigned_servers item="asrv"}
                    if($('server_{$asrv.0}'))$('server_{$asrv.0}').checked = true;
                    if($('group_{$asrv[1]}'))$('group_{$asrv[1]}').checked = true;
                {/foreach}
                {foreach from=$server_list item="server"}
                    xajax_ServerHostPlayers({$server.sid}, "id", "host_{$server.sid}");
                {/foreach}
            </script>
        </div>
    </div>
</form>
<!-- end admin edit admins servers page -->