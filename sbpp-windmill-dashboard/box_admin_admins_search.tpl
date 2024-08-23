<div id="mainwrapper" class="flex items-center justify-center p-4 mb-8 text-sm px-4 py-3 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <table width="80%" cellpadding="0" class="listtable" cellspacing="0">
        <tr class="sea_open">
            <td class="font-semibold text-center text-gray-700 dark:text-gray-400">Advanced Search (Click)</td>
        </tr>
        <tr>
            <td>
                <div class="panel">
                    <table width="100%" cellpadding="0" class="listtable" cellspacing="0">
                        <tr>
                            <td class="listtable_1" width="8%" align="center"><input id="name_" name="search_type" type="radio" value="name" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400" width="26%">Nickname</td>
                            <td class="listtable_1" width="66%"><input type="text" id="nick" value="" onmouseup="$('name_').checked = true" style="width: 353px;" class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"></td>
                        </tr>
                        <tr>
                            <td align="center" class="listtable_1" ><input id="steam_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">SteamID</td>
                            <td class="flex items-center" >
                                <input type="text" id="steamid" value="" onmouseup="$('steam_').checked = true" style="width: 233px; margin-right: 15px;" class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                                    <select id="steam_match" onmouseup="$('steam_').checked = true" style="width: 105px;" class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                    <option value="0" selected>Exact Match</option>
                                    <option value="1">Partial Match</option>
                                </select>
                            </td>
                        </tr>
                        {if $can_editadmin}
                            <tr>
                                <td class="listtable_1" width="8%" align="center"><input id="admemail_" name="search_type" type="radio" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                                <td class="text-gray-700 dark:text-gray-400" width="26%">E-Mail</td>
                                <td class="listtable_1" width="66%"><input type="text" id="admemail" value="" onmouseup="$('admemail_').checked = true" style="width: 353px;" class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"></td>
                            </tr>
                        {/if}
                        <tr>
                            <td align="center" class="listtable_1" ><input id="webgroup_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Web Group</td>
                            <td class="listtable_1" >
                                <select id="webgroup" onmouseup="$('webgroup_').checked = true" style="width: 379px;" class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                    {foreach from=$webgroup_list item="webgrp"}
                                        <option label="{$webgrp.name}" value="{$webgrp.gid}">{$webgrp.name}</option>
                                    {/foreach}
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="listtable_1" ><input id="srvadmgroup_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Serveradmin Group</td>
                            <td class="listtable_1" >
                                <select id="srvadmgroup" onmouseup="$('srvadmgroup_').checked = true" style="width: 379px;" class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                    {foreach from=$srvadmgroup_list item="srvadmgrp"}
                                        <option label="{$srvadmgrp.name}" value="{$srvadmgrp.name}">{$srvadmgrp.name}</option>
                                    {/foreach}
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="listtable_1" ><input id="srvgroup_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Server Group</td>
                            <td class="listtable_1" >
                                <select id="srvgroup" onmouseup="$('srvgroup_').checked = true" style="width: 379px;" class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                    {foreach from=$srvgroup_list item="srvgrp"}
                                        <option label="{$srvgrp.name}" value="{$srvgrp.gid}">{$srvgrp.name}</option>
                                    {/foreach}
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="listtable_1"  align="center"><input id="admwebflags_" name="search_type" type="radio" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Web Permissions</td>
                            <td class="listtable_1" >
                                <select id="admwebflag" name="admwebflag" onblur="getMultiple(this, 1);" size="5" multiple onmouseup="$('admwebflags_').checked = true" style="width: 379px;" class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                    {foreach from=$admwebflag_list item="admwebflag"}
                                        <option label="{$admwebflag.name}" value="{$admwebflag.flag}">{$admwebflag.name}</option>
                                    {/foreach}
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="listtable_1"  align="center"><input id="admsrvflags_" name="search_type" type="radio" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Server Permissions</td>
                            <td class="listtable_1">
                                <select id="admwebflag" name="admsrvflag" onblur="getMultiple(this, 2);" size="5" multiple onmouseup="$('admsrvflags_').checked = true" style="width: 379px;" class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                    {foreach from=$admsrvflag_list item="admsrvflag"}
                                        <option label="{$admsrvflag.name}" value="{$admsrvflag.flag}">{$admsrvflag.name}</option>
                                    {/foreach}
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="listtable_1"  align="center"><input id="admin_on_" name="search_type" type="radio" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Server</td>
                            <td class="listtable_1">
                                <select id="server" onmouseup="$('admin_on_').checked = true" style="width: 379px;" class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                            {foreach from=$server_list item="server"}
								<option value="{$server.sid}" id="ss{$server.sid}">Retrieving Hostname... ({$server.ip}:{$server.port})</option>
							{/foreach}
						</select>            
					</td>
			    </tr>
			    <tr>
			        <td colspan="3">{sb_button text="Search" onclick="search_admins();" class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="searchbtn" submit=false}</td>
			    </tr>
			   </table>
			   </div>
		  </td>
		</tr>
	</table>
</div>
{$server_script}
<script>InitAccordion('tr.sea_open', 'div.panel', 'mainwrapper');</script>
