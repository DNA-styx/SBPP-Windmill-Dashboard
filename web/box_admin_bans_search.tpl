<div
class="flex items-center justify-center p-4 mb-8 text-sm px-4 py-3 bg-white rounded-lg shadow-md dark:bg-gray-800"
>


    <table>
        <tr class="sea_open">
            <td class="font-semibold text-center text-gray-700 dark:text-gray-400" colspan="3">Advanced Search (Click)</td>
        </tr>
        <tr>
            <td>
                <div class="panel">
                    <table width="100%" cellpadding="0" class="listtable" cellspacing="0">
                        <tr>
                            <td class="listtable_1" width="8%" align="center"><input id="name" name="search_type" type="radio" value="name" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400" width="26%">Nickname</td>
                            <td class="listtable_1" width="66%"><input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" type="text" id="nick" value="" onmouseup="$('name').checked = true" style="width: 87%;"></td>
                        </tr>
                        <tr>
                            <td align="center" class="listtable_1" ><input id="steam_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400" >Steam ID</td>
                            <td class="flex items-center">
                                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" type="text" id="steamid" value="" onmouseup="$('steam_').checked = true"style="width: 50%; margin-right: 12px;">
                                <select class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray" id="steam_match" onmouseup="$('steam_').checked = true" style="width: 33%;">
                                    <option value="0" selected>Exact Match</option>
                                    <option value="1">Partial Match</option>
                                </select>
                            </td>
                        </tr>
                        {if !$hideplayerips}
                            <tr>
                                <td align="center" class="listtable_1" ><input id="ip_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                                <td class="text-gray-700 dark:text-gray-400">IP</td>
                                <td class="listtable_1"><input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" type="text" id="ip" value="" onmouseup="$('ip_').checked = true"style="width: 87%;"></td>
                            </tr>
                        {/if}
                        <tr>
                            <td align="center" class="listtable_1" ><input id="reason_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Reason</td>
                            <td class="listtable_1"><input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" type="text" id="ban_reason" value="" onmouseup="$('reason_').checked = true" style="width: 87%;"></td>
                        </tr>
                        <tr>
                            <td align="center" class="listtable_1" ><input id="date" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Date</td>
                            <td class="flex items-center">
                                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" type="text" id="day" value="DD" onmouseup="$('date').checked = true" maxlength="2" style="width: 22%;">
                                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" type="text" id="month" value="MM" onmouseup="$('date').checked = true" maxlength="2" style="width: 22%;">
                                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" type="text" id="year" value="YY" onmouseup="$('date').checked = true" maxlength="4" style="width: 24%;">
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="listtable_1" ><input id="length_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Length</td>
                            <td class="listtable_1">
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <select class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray" id="length_type" onmouseup="$('length_').checked = true">
                                                <option value="e" title="equal to">=</option>
                                                <option value="h" title="greater">&gt;</option>
                                                <option value="l" title="smaller">&lt;</option>
                                                <option value="eh" title="equal to or greater">&gt;=</option>
                                                <option value="el" title="equal to or smaller">&lt;=</option>
                                            </select>
                                        </td>
                                        <td>
                                            <input type="text" id="other_length" name="other_length" onmouseup="$('length_').checked = true" class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" style="display:none;">
                                        </td>
                                        <td>
                                            <select class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray" id="length" onmouseup="$('length_').checked = true" onchange="switch_length(this);" onmouseover="if(this.options[this.selectedIndex].value=='other')$('length').setStyle('width', '210px');if(this.options[this.selectedIndex].value=='other')this.focus();" onblur="if(this.options[this.selectedIndex].value=='other')$('length').setStyle('width', '20px');" style="width: 127%;">
                                                <option value="0">Permanent</option>
                                                <optgroup label="minutes">
                                                    <option value="1">1 minute</option>
                                                    <option value="5">5 minutes</option>
                                                    <option value="10">10 minutes</option>
                                                    <option value="15">15 minutes</option>
                                                    <option value="30">30 minutes</option>
                                                    <option value="45">45 minutes</option>
                                                </optgroup>
                                                <optgroup label="hours">
                                                    <option value="60">1 hour</option>
                                                    <option value="120">2 hours</option>
                                                    <option value="180">3 hours</option>
                                                    <option value="240">4 hours</option>
                                                    <option value="480">8 hours</option>
                                                    <option value="720">12 hours</option>
                                                </optgroup>
                                                <optgroup label="days">
                                                    <option value="1440">1 day</option>
                                                    <option value="2880">2 days</option>
                                                    <option value="4320">3 days</option>
                                                    <option value="5760">4 days</option>
                                                    <option value="7200">5 days</option>
                                                    <option value="8640">6 days</option>
                                                </optgroup>
                                                <optgroup label="weeks">
                                                    <option value="10080">1 week</option>
                                                    <option value="20160">2 weeks</option>
                                                    <option value="30240">3 weeks</option>
                                                </optgroup>
                                                <optgroup label="months">
                                                    <option value="40320">1 month</option>
                                                    <option value="80640">2 months</option>
                                                    <option value="120960">3 months</option>
                                                    <option value="241920">6 months</option>
                                                    <option value="483840">12 months</option>
                                                </optgroup>
                                                <option value="other">Other length in minutes</option>
                                            </select>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="listtable_1" ><input id="ban_type_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Type</td>
                            <td class="listtable_1">
                                <select class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray" id="ban_type" onmouseup="$('ban_type_').checked = true" style="width: 95%;">
                                    <option value="0" selected>Steam ID</option>
                                    <option value="1">IP Address</option>
                                </select>
                            </td>
                        </tr>
                        {if !$hideadminname}
                        <tr>
                            <td class="listtable_1"  align="center"><input id="admin" name="search_type" type="radio" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Admin</td>
                            <td class="listtable_1">
                                <select class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray" id="ban_admin" onmouseup="$('admin').checked = true" style="width: 95%;">
                {foreach from=$admin_list item="admin"}
								    <option label="{$admin.user}" value="{$admin.aid}">{$admin.user}</option>
							  {/foreach}
						</select>
					</td>
				</tr>
                {/if}
			    <tr>
			    	<td class="listtable_1"  align="center"><input id="where_banned" name="search_type" type="radio" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
					<td class="text-gray-700 dark:text-gray-400">Server</td>
			        <td class="listtable_1">
						<select class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray" id="server" onmouseup="$('where_banned').checked = true" style="width: 95%;">
						<option label="Web Ban" value="0">Web Ban</option>
							{foreach from=$server_list item="server"}
								<option value="{$server.sid}" id="ss{$server.sid}">Retrieving Hostname... ({$server.ip}:{$server.port})</option>
							{/foreach}
						</select>
					</td>
			    </tr>
				{if $is_admin}
				<tr>
			        <td align="center" class="listtable_1"><input id="comment_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
			        <td class="text-gray-700 dark:text-gray-400">Comment</td>
			        <td class="listtable_1"><input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" type="text" id="ban_comment" value="" onmouseup="$('comment_').checked = true"></td>
			    </tr>
				{/if}
			    <tr>
			        <td colspan="4">{sb_button text="Search" onclick="search_bans();" class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="searchbtn" submit=false}</td>
			    </tr>
			   </table>
			   </div>
		  </td>
		</tr>
	</table>
</div>

{$server_script}
<script>InitAccordion('tr.sea_open', 'div.panel', 'mainwrapper');</script>