<div class="tabcontent" id="Add new admin">
    {if NOT $permission_addadmin}
        Access Denied!
    {else}
        <div id="msg-green" style="display:none;">
            <i class="fas fa-check fa-2x"></i>
            <b>Admin Added</b>
            <br>
            The new admin has been successfully added to the system.<br><br>
            <i>Redirecting back to admins page</i>
        </div>

        <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800" id="add-group1">
            <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
                <div class="w-full">

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Admin Login</span>
                        <input type="text" TABINDEX=1 id="adminname" name="adminname"
                            class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                    </label>
                    <span class="text-xs text-gray-600 dark:text-gray-400">
                        This is the username the admin will use to login-to their admin panel. Also this will identify the
                        admin on any bans they make.
                    </span>
                    <div class="text-xs text-red-600 dark:text-red-400">
                        <span id="name.msg" class="badentry"></span>
                    </div>

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Admin Steam ID</span>
                        <input type="text" TABINDEX=2 value="STEAM_0:" id="steam" name="steam"
                            class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                    </label>
                    <span class="text-xs text-gray-600 dark:text-gray-400">
                        This is the admins 'STEAM' id. This must be set so that admins can use their admin rights ingame.
                    </span>
                    <div class="text-xs text-red-600 dark:text-red-400">
                        <span id="steam.msg" class="badentry"></span>
                    </div>

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Admin Email</span>
                        <input type="text" TABINDEX=3 id="email" name="email"
                            class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                    </label>
                    <span class="text-xs text-gray-600 dark:text-gray-400">
                        Set the admins e-mail address. This will be used for sending out any automated messages from the
                        system and changing of forgotten passwords. This is only required, if you set webpanel permissions.
                    </span>
                    <div class="text-xs text-red-600 dark:text-red-400">
                        <span id="email.msg" class="badentry"></span>
                    </div>

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Admin Password</span>
                        <span class="flex items-center">
                            <input type="password" TABINDEX=4 id="password" name="password"
                                class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                            &nbsp;&nbsp;&nbsp;
                            <button onclick="xajax_generatePassword();" class="tip" title="::Generate random password">
                                <i class="fas fa-sync fa-lg"></i>
                            </button>
                            &nbsp;&nbsp;&nbsp;
                            <button onclick="$('password').type='text'" class="tip" title="::Show password">
                                <i class="fas fa-eye fa-lg"></i>
                            </button>
                        </span>
                    </label>
                    <span class="text-xs text-gray-600 dark:text-gray-400">
                        The password the admin will need to access the admin panel. This is only required, if you set
                        webpanel permissions.
                    </span>
                    <div class="text-xs text-red-600 dark:text-red-400">
                        <span id="password.msg" class="badentry"></span>
                    </div>

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Admin Password (confirm)</span>
                        <input type="password" TABINDEX=5 id="password2" name="password2"
                            class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                    </label>
                    <span class="text-xs text-gray-600 dark:text-gray-400">
                        Type the password again to confirm.
                    </span>
                    <div class="text-xs text-red-600 dark:text-red-400">
                        <span id="password2.msg" class="badentry"></span>
                    </div>

                    <label class="block mt-4 text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Server Password</span>
                        <input type="checkbox" id="a_useserverpass" name="a_useserverpass" TABINDEX=6
                            onclick="$('a_serverpass').disabled = !$(this).checked;"
                            class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                        <input type="password" TABINDEX=7 name="a_serverpass" id="a_serverpass" disabled="disabled"
                            class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                        <div class="text-xs text-gray-600 dark:text-gray-400">
                            If this box is checked, you will need to specify this password in the game server before you can
                            use your admin rights.
                            (<a href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords"
                                title="SourceMod Password Info" target="_blank">More</a>)
                        </div>
                        <div class="text-xs text-red-600 dark:text-red-400">
                            <span id="a_serverpass.msg" class="badentry"></span>
                        </div>

                        <label class="block mt-4 text-sm">
                            <span class="text-gray-700 dark:text-gray-400">Server Access</span>
                            <table width="90%" border="0" cellspacing="0" cellpadding="4" align="center">
                                {foreach from=$group_list item="group"}
                                    <tr>
                                        <td colspan="2" class="tablerow4 text-gray-700 dark:text-gray-400">
                                            {$group.name}<b><i>(Group)</i></b></td>
                                        <td align="center" class="tablerow4 text-gray-700 dark:text-gray-400"><input
                                                type="checkbox" id="group[]" name="group[]" value="g{$group.gid}"
                                                class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                        </td>
                                    </tr>
                                {/foreach}
                                {foreach from=$server_list item="server"}
                                    <tr class="tablerow1">
                                        <td colspan="2" class="tablerow1 text-gray-700 dark:text-gray-400" id="sa{$server.sid}">
                                            <i>Retrieving Hostname... {$server.ip}:{$server.port}</i>
                                        </td>
                                        <td align="center" class="tablerow1 text-gray-700 dark:text-gray-400">
                                            <input type="checkbox" name="servers[]" id="servers[]" value="s{$server.sid}"
                                                class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                        </td>
                                    </tr>
                                {/foreach}
                            </table>
                        </label>
                        <div class="text-xs text-gray-600 dark:text-gray-400">
                            Server: Choose the server, or server group that this admin will be able to administer.
                        </div>

                        <label class="block mt-4 text-sm">
                            <span class="text-gray-700 dark:text-gray-400">Server Admin Group</span>
                            <select TABINDEX=8 onchange="update_server()" name="serverg" id="serverg"
                                class="select block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                <option value="-2">Please Select...</option>
                                <option value="-3">No Permissions</option>
                                <option value="c">Custom Permissions</option>
                                <option value="n">New Admin Group</option>
                                <optgroup label="Groups" style="font-weight:bold;">
                                    {foreach from=$server_admin_group_list item="server_wg"}
                                        <option value='{$server_wg.id}'>{$server_wg.name}</option>
                                    {/foreach}
                                </optgroup>
                            </select>
                        </label>
                        <div class="text-xs text-gray-600 dark:text-gray-400">
                            <b>Custom Permisions:</b> Select this to choose custom permissions for this admin.<br>
                            <b>New Group:</b> Select this to choose custom permissions and then save the permissions as a
                            new group.<br>
                            <b>Groups:</b> Select a pre-made group to add the admin to.
                        </div>
                        <div class="text-xs text-red-600 dark:text-red-400">
                            <span id="server.msg" class="badentry"></span>
                        </div>

                        <label class="block mt-4 text-sm">
                            <span class="text-gray-700 dark:text-gray-400">Web Admin Group</span>
                            <select TABINDEX=9 onchange="update_web()" name="webg" id="webg"
                                class="select block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                <option value="-2">Please Select...</option>
                                <option value="-3">No Permissions</option>
                                <option value="c">Custom Permissions</option>
                                <option value="n">New Admin Group</option>
                                <optgroup label="Groups" style="font-weight:bold;">
                                    {foreach from=$server_group_list item="server_g"}
                                        <option value='{$server_g.gid}'>{$server_g.name}</option>
                                    {/foreach}
                                </optgroup>
                            </select>
                        </label>
                        <div class="text-xs text-gray-600 dark:text-gray-400">
                            <b>Custom Permisions:</b> Select this to choose custom permissions for this admin.<br>
                            <b>New Group:</b> Select this to choose custom permissions and then save the permissions as a
                            new group.<br>
                            <b>Groups:</b> Select a pre-made group to add the admin to.
                        </div>
                        <div class="text-xs text-red-600 dark:text-red-400">
                            <span id="web.msg" class="badentry"></span>
                        </div>

                        {sb_button text="Add Admin" onclick="ProcessAddAdmin();" id="aadmin" submit=false class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}

                </div>
            </div>
        </div>

        {$server_script}
    {/if}
</div>