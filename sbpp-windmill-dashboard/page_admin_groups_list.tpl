<!-- Start admin group list -->
{if NOT $permission_listgroups}
    Access Denied!
{else}

    <div id="mainwrapper" class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
        <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
            <div class="w-full">

            <h4 class="mb-4 font-semibold text-gray-600 dark:text-gray-300">Click on a group to view its permissions.</h4>

                <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
                    <div class="w-full overflow-x-auto">

                        <!-- Web Admin Groups -->
                        <table width="100%" cellpadding="0" cellspacing="0" class="w-full whitespace-no-wrap">
                            <tr class="text-gray-700 dark:text-gray-400">
                                <td colspan="4">
                                    <table width="100%" cellpadding="0" cellspacing="0" class="front-module-header"
                                        class="listtable">
                                        <tr>
                                            <td align="left">Web Admin Groups</td>
                                            <td align="right">Total: {$web_group_count}</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr class="text-gray-700 dark:text-gray-400">
                                <td class="px-4 py-3"><strong>Group Name</strong></td>
                                <td class="px-4 py-3"><strong>Admins in group</strong></td>
                                <td class="px-4 py-3"><strong>Action</strong></td>
                            </tr>
                            {foreach from=$web_group_list item="group" name="web_group"}
                                <tr id="gid_{$group.gid}" class="opener tbl_out text-gray-700 dark:text-gray-400">
                                    <td class="listtable_1" height='16'>{$group.name}</td>
                                    <td class="listtable_1" height='16'>{$web_admins[$smarty.foreach.web_group.index]}</td>
                                    <td class="listtable_1" height='16'>
                                        {if $permission_editgroup}
                                            <a href="index.php?p=admin&c=groups&o=edit&type=web&id={$group.gid}">Edit</a>
                                        {/if}
                                        {if $permission_deletegroup}
                                            - <a href="#" onclick="RemoveGroup({$group.gid}, '{$group.name}', 'web');">Delete</a>
                                        {/if}
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="7" align="center">
                                        <div class="opener">
                                            <table width="80%" cellspacing="0" cellpadding="0" class="listtable">
                                                <tr class="text-gray-700 dark:text-gray-400">
                                                    <td height="16" align="left" class="listtable_top" colspan="3">
                                                        <b>Group Details</b>
                                                    </td>
                                                </tr>
                                                <tr align="left" class="text-gray-700 dark:text-gray-400">
                                                    <td width="20%" height="16" class="listtable_1">Permissions</td>
                                                    <td height="16" class="listtable_1">
                                                        <span style='font-size:10px;color:#1b75d1;'>Web Permissions</span>
                                                        <br>
                                                        {if $group.permissions}
                                                            {foreach from=$group.permissions item=permission}
                                                                &bull; {$permission} <br>
                                                            {/foreach}
                                                        {else}
                                                            <i>None</i>
                                                        {/if}
                                                    </td>
                                                </tr>
                                                <tr align="left" class="text-gray-700 dark:text-gray-400">
                                                    <td width="20%" height="16" class="listtable_1">Members</td>
                                                    <td height="16" class="listtable_1">
                                                        <table width="100%" cellspacing="0" cellpadding="0" class="listtable">
                                                            {foreach from=$web_admins_list[$smarty.foreach.web_group.index] item="web_admin"}
                                                                <tr>
                                                                    <td width="60%" height="16" class="listtable_1">
                                                                        {$web_admin.user}</td>
                                                                    {if $permission_editadmin}
                                                                        <td width="20%" height="16" class="listtable_1"><a
                                                                                href="index.php?p=admin&c=admins&o=editgroup&id={$web_admin.aid}"
                                                                                title="Edit Groups">Edit</a></td>
                                                                        <td width="20%" height="16" class="listtable_1"><a
                                                                                href="index.php?p=admin&c=admins&o=editgroup&id={$web_admin.aid}&wg="
                                                                                title="Remove From Group">Remove</a></td>
                                                                    {/if}
                                                                </tr>
                                                            {/foreach}
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            {/foreach}
                        </table>
                        <br><br>

                        <!-- Server Admin Groups -->
                        <table width="100%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="4">
                                    <table width="100%" cellpadding="0" cellspacing="0" class="front-module-header"
                                        class="listtable">
                                        <tr class="text-gray-700 dark:text-gray-400">
                                            <td align="left">Server Admin Groups</td>
                                            <td align="right">Total: {$server_admin_group_count}</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr class="text-gray-700 dark:text-gray-400">
                                <td class="px-4 py-3"><strong>Group Name</strong></td>
                                <td class="px-4 py-3"><strong>Admins in group</strong></td>
                                <td class="px-4 py-3"><strong>Action</strong></td>
                            </tr>
                            {foreach from=$server_group_list item="group" name="server_admin_group"}
                                <tr id="gid_{$group.id}" class="opener tbl_out text-gray-700 dark:text-gray-400">
                                    <td class="listtable_1" height='16'>{$group.name}</td>
                                    <td class="listtable_1" height='16'>
                                        {$server_admins[$smarty.foreach.server_admin_group.index]}</td>
                                    <td class="listtable_1" height='16'>
                                        {if $permission_editgroup}
                                            <a href="index.php?p=admin&c=groups&o=edit&type=srv&id={$group.id}">Edit</a>
                                        {/if}
                                        {if $permission_deletegroup}
                                            - <a href="#" onclick="RemoveGroup({$group.id}, '{$group.name}', 'srv');">Delete</a>
                                        {/if}
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="7" align="center" class="text-gray-700 dark:text-gray-400">
                                        <div class="opener">
                                            <table width="80%" cellspacing="0" cellpadding="0" class="listtable">
                                                <tr>
                                                    <td height="16" align="left" class="listtable_top" colspan="3">
                                                        <b>Group Details</b>
                                                    </td>
                                                </tr>
                                                <tr align="left" class="text-gray-700 dark:text-gray-400">
                                                    <td width="20%" height="16" class="listtable_1">Permissions</td>
                                                    <td height="16" class="listtable_1">
                                                        <span style='font-size:10px;color:#1b75d1;'>Server Permissions</span>
                                                        <br>
                                                        {if $group.permissions}
                                                            {foreach from=$group.permissions item=permission}
                                                                &bull; {$permission} <br>
                                                            {/foreach}
                                                        {else}-
                                                            <i>None</i>
                                                        {/if}
                                                    </td>
                                                </tr>
                                                <tr align="left">
                                                    <td width="20%" height="16" class="listtable_1">Members</td>
                                                    <td height="16" class="listtable_1">
                                                        <table width="100%" cellspacing="0" cellpadding="0" class="listtable">
                                                            {foreach from=$server_admins_list[$smarty.foreach.server_admin_group.index] item="server_admin"}
                                                                <tr class="text-gray-700 dark:text-gray-400">
                                                                    <td width="60%" height="16" class="listtable_1">
                                                                        {$server_admin.user}</td>
                                                                    {if $permission_editadmin}
                                                                        <td width="20%" height="16" class="listtable_1"><a
                                                                                href="index.php?p=admin&c=admins&o=editgroup&id={$server_admin.aid}"
                                                                                title="Edit Groups">Edit</a></td>
                                                                        <td width="20%" height="16" class="listtable_1"><a
                                                                                href="index.php?p=admin&c=admins&o=editgroup&id={$server_admin.aid}&sg="
                                                                                title="Remove From Group">Remove</a></td>
                                                                    {/if}
                                                                </tr>
                                                            {/foreach}
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr align="left" class="text-gray-700 dark:text-gray-400">
                                                    <td width="20%" height="16" class="listtable_1">Overrides</td>
                                                    <td height="16" class="listtable_1">
                                                        <table width="100%" cellspacing="0" cellpadding="0" class="listtable">
                                                            <tr class="text-gray-700 dark:text-gray-400">
                                                                <td class="listtable_top">Type</td>
                                                                <td class="listtable_top">Name</td>
                                                                <td class="listtable_top">Access</td>
                                                            </tr>
                                                            {foreach from=$server_overrides_list[$smarty.foreach.server_admin_group.index] item="override"}
                                                                <tr class="text-gray-700 dark:text-gray-400">
                                                                    <td width="60%" height="16" class="listtable_1">{$override.type}
                                                                    </td>
                                                                    <td width="60%" height="16" class="listtable_1">
                                                                        {$override.name|smarty_htmlspecialchars}</td>
                                                                    <td width="60%" height="16" class="listtable_1">
                                                                        {$override.access}</td>
                                                                </tr>
                                                            {/foreach}
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            {/foreach}
                        </table>
                        <br><br>

                        <!-- Server Groups -->
                        <table width="100%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="4">
                                    <table width="100%" cellpadding="0" cellspacing="0" class="front-module-header">
                                        <tr class="text-gray-700 dark:text-gray-400">
                                            <td align="left">Server Groups</td>
                                            <td align="right">Total: {$server_group_count}</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr class="text-gray-700 dark:text-gray-400">
                                <td class="px-4 py-3"><strong>Group Name</strong></td>
                                <td class="px-4 py-3"><strong>Servers in group</strong></td>
                                <td class="px-4 py-3"><strong>Action</strong></td>
                            </tr>
                            {foreach from=$server_list item="group" name="server_group"}
                                <tr id="gid_{$group.gid}" class="opener tbl_out text-gray-700 dark:text-gray-400">
                                    <td class="listtable_1" height='16'>{$group.name}</td>
                                    <td class="listtable_1" height='16'>{$server_counts[$smarty.foreach.server_group.index]}
                                    </td>
                                    <td class="listtable_1" height='16'>
                                        {if $permission_editgroup}
                                            <a href="index.php?p=admin&c=groups&o=edit&type=server&id={$group.gid}">Edit</a>
                                        {/if}
                                        {if $permission_deletegroup}
                                            - <a href="#" onclick="RemoveGroup({$group.gid}, '{$group.name}', 'server');">Delete</a>
                                        {/if}
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="7" align="center">
                                        <div class="opener">
                                            <table width="80%" cellspacing="0" cellpadding="0" class="listtable">
                                                <tr class="text-gray-700 dark:text-gray-400">
                                                    <td height="16" align="left" class="listtable_top" colspan="3">
                                                        <b>Servers in this group</b>
                                                    </td>
                                                </tr>
                                                <tr align="left" class="text-gray-700 dark:text-gray-400">
                                                    <td width="20%" height="16" class="listtable_1">Server Names</td>
                                                    <td height="16" class="listtable_1" id="servers_{$group.gid}">
                                                        Please Wait!
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
        </div>
    </div>

{/if}
<!-- End admin group list -->