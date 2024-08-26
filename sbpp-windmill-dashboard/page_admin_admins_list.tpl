<!-- start admin admin page -->
<div id="admin-page-content">
    <div class="tabcontent" id="List admins">
        {if not $permission_listadmin}
            Access Denied
        {else}

            {load_template file="admin.admins.search"}

            <div
                class="flex items-center justify-between p-4 mb-8 text-sm px-4 py-3 bg-white rounded-lg shadow-md dark:bg-gray-800">
                <div class="flex items-center text-gray-600 dark:text-gray-400">
                    Admins (<span id="admincount">{$admin_count}</span>) {$admin_nav}
                </div>
                <div class="flex items-center text-gray-600 dark:text-gray-400">
                    Click on an admin's name to see and edit permissions.
            </div>
        </div>

        <div id="mainwrapper" class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
            <div class="w-full overflow-x-auto">

                <div id="banlist">
                    <table class="w-full whitespace-no-wrap">
                        <tr
                            class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                            <td class="px-4 py-3"><b>Name</b></td>
                            <td class="px-4 py-3"><b>Bans Actioned</b></td>
                            <td class="px-4 py-3"><b>Server Admin Group </b></td>
                            <td class="px-4 py-3"><b>Web Admin Group</b></td>
                        </tr>
                        {foreach from=$admins item="admin"}
                        <tr
                            class="opener text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                            <td class="px-4 py-3">{$admin.user}</td>
                            <td class="px-4 py-3"><a href="./index.php?p=banlist&advSearch={$admin.aid}&advType=admin"
                                    title="Show bans">{$admin.bancount} bans</a> | <a
                                    href="./index.php?p=banlist&advSearch={$admin.aid}&advType=nodemo"
                                    title="Show bans without demo">{$admin.nodemocount} without demos</a></td>
                            <td class="px-4 py-3">{$admin.server_group}</td>
                            <td class="px-4 py-3">{$admin.web_group}</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <div class="opener" align="center" border="1">
                                    <table class="w-full whitespace-no-wrap">
                                        <tr
                                            class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                            <td align="left" colspan="3" class="front-module-header">
                                                <b>Admin Details of {$admin.user}</b>
                                            </td>
                                        </tr>
                                        <tr
                                            class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                            <td width="35%" class="front-module-line"><b>Server Admin Permissions</b>
                                            </td>
                                            <td width="35%" class="front-module-line"><b>Web Admin Permissions</b></td>
                                            <td width="30%" valign="top" class="front-module-line"><b>Action</b></td>
                                        </tr>
                                        <tr
                                            class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                            <td valign="top">
                                                <span style='font-size:10px;color:#1b75d1;'>Server Permissions</span>
                                                <br />
                                                {if $admin.server_flag_string}
                                                {foreach from=$admin.server_flag_string item=permission}
                                                &bull; {$permission} <br />
                                                {/foreach}
                                                {else}
                                                <i>None</i>
                                                {/if}
                                            </td>
                                            <td valign="top">
                                                <span style='font-size:10px;color:#1b75d1;'>Web Permissions</span>
                                                <br>
                                                {if $admin.web_flag_string}
                                                {foreach from=$admin.web_flag_string item=permission}
                                                &bull; {$permission} <br />
                                                {/foreach}
                                                {else}
                                                <i>None</i>
                                                {/if}
                                            </td>
                                            <td width="30%" valign="top">
                                                <div class="ban-edit">
                                                    <ul>
                                                        {if $permission_editadmin}
                                                        <li>
                                                            <a
                                                                href="index.php?p=admin&c=admins&o=editdetails&id={$admin.aid}"><i
                                                                    class="fas fa-clipboard-list fa-lg"></i> Edit
                                                                Details</a>
                                                        </li>
                                                        <li>
                                                            <a
                                                                href="index.php?p=admin&c=admins&o=editpermissions&id={$admin.aid}"><i
                                                                    class="fas fa-subscript fa-lg"></i> Edit
                                                                Permissions</a>
                                                        </li>
                                                        <li>
                                                            <a
                                                                href="index.php?p=admin&c=admins&o=editservers&id={$admin.aid}"><i
                                                                    class="fas fa-server fa-lg"></i> Edit Server
                                                                Access</a>
                                                        </li>
                                                        <li>
                                                            <a
                                                                href="index.php?p=admin&c=admins&o=editgroup&id={$admin.aid}"><i
                                                                    class="fas fa-users fa-lg"></i> Edit Groups</a>
                                                        </li>
                                                        {/if}
                                                        {if $permission_deleteadmin}
                                                        <li>
                                                            <a href="#"
                                                                onclick="RemoveAdmin({$admin.aid}, '{$admin.user}');"><i
                                                                    class="fas fa-trash fa-lg"></i> Delete Admin</a>
                                                        </li>
                                                        {/if}
                                                    </ul>
                                                </div>
                                                <div class="front-module-line" style="padding:3px;">Immunity Level:
                                                    <b>{$admin.immunity}</b>
                                                </div>
                                                <div class="front-module-line" style="padding:3px;">Last Visited:
                                                    <b><small>{$admin.lastvisit}</small></b>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        {/foreach}
                    </table>
                </div>
            </div>
        </div>
        <script>
            InitAccordion('tr.opener', 'div.opener', 'mainwrapper');
            </script>
        {/if}
    </div>
</div>
<!-- end admin admin page -->