<!-- start ban protests -->
{if NOT $permission_protests}
    Access Denied!
{else}
    <div id="mainwrapper" class="w-full mb-2 overflow-hidden rounded-lg shadow-xs">
        <div class="w-full overflow-x-auto">

    <div
        class="flex items-center justify-between p-4 mb-8 text-sm px-4 py-3 bg-white rounded-lg shadow-md dark:bg-gray-800">
        <div class="flex items-center text-gray-600 dark:text-gray-400">
            <span>Ban Protests (<span id="protcount">{$protest_count}</span>)</span>
        </div>
        <div class="flex items-center text-gray-600 dark:text-gray-400">
            {$protest_nav}
        </div>
    </div>

    <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Click a player's nickname to view information about their ban</h4>

    <div id="protests">
 
        <table class="w-full whitespace-no-wrap">
        <thead>
            <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                <td class="px-4 py-3"><strong>Nickname</strong></td>
                <td class="px-4 py-3"><strong>SteamID</strong></td>
                <td class="px-4 py-3"><strong>Action</strong></td>
            </tr>
            </thead>
            <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
            {foreach from=$protest_list item="protest"}
                <tr id="pid_{$protest.pid}" class="opener2 text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                    <td class="toggler listtable_1" height='16'>{$protest.name}</td>
                    <td class="listtable_1" height='16'>{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}</td>
                    <td class="listtable_1" height='16'><a href="./index.php?p=banlist&advSearch={$protest.authid}&advType=steamid" title="Show ban">View Full Ban Details</a> -
                        {if $permission_editban}
                            <a href="#" onclick="RemoveProtest('{$protest.pid}', '{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}', '1');">Remove</a> -
                        {/if}
                        <a href="index.php?p=admin&c=bans&o=email&type=p&id={$protest.pid}">Contact</a>
                    </td>
                </tr>
                <tr id="pid_{$protest.pid}a" class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                    <td colspan="3" align="center" id="ban_details_{$protest.pid}">
                        <div class="opener2">
                            <table width="90%" cellspacing="0" cellpadding="0" class="listtable">
                                <tr>
                                    <td height="16" align="left" class="listtable_top" colspan="3">
                                        <b>Bandetails</b>
                                    </td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Player</td>
                                    <td height="16" class="listtable_1">{$protest.name}</td>
                                    <td width="30%" rowspan="11" class="listtable_2">
                                        <div class="ban-edit">
                                            <ul>
                                                <li>{$protest.protaddcomment}</li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">SteamID</td>
                                    <td height="16" class="listtable_1">
                                        {if $protest.authid == ""}
                                            <i><font color="#677882">no steamid present</font></i>
                                        {else}
                                            {$protest.authid}
                                        {/if}
                                    </td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">IP address</td>
                                    <td height="16" class="listtable_1">
                                        {if $protest.ip == 'none' || $protest.ip == ''}
                                            <i><font color="#677882">no IP address present</font></i>
                                        {else}
                                            {$protest.ip}
                                        {/if}
                                    </td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Invoked on</td>
                                    <td height="16" class="listtable_1">{$protest.date}</td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">End Date</td>
                                    <td height="16" class="listtable_1">
                                        {if $protest.ends == 'never'}
                                            <i><font color="#677882">Not applicable.</font></i>
                                        {else}
                                            {$protest.ends}
                                        {/if}
                                    </td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Reason</td>
                                    <td height="16" class="listtable_1">{$protest.ban_reason}</td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Banned by Admin</td>
                                    <td height="16" class="listtable_1">{$protest.admin}</td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Banned from</td>
                                    <td height="16" class="listtable_1">{$protest.server}</td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Protester IP</td>
                                    <td height="16" class="listtable_1">{$protest.pip}</td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Protested on</td>
                                    <td height="16" class="listtable_1">{$protest.datesubmitted}</td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Protest message</td>
                                    <td height="16" class="listtable_1">{$protest.reason}</td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Comments</td>
                                    <td height="60" class="listtable_1" colspan="3">
                                        {if $protest.commentdata != "None"}
                                            <table width="100%" border="0">
                                                {foreach from=$protest.commentdata item=commenta}
                                                    {if $commenta.morecom}
                                                        <tr>
                                                            <td colspan="3">
                                                                <hr>
                                                            </td>
                                                        </tr>
                                                    {/if}
                                                    <tr>
                                                        <td>
                                                            {if !empty($commenta.comname)}
                                                                <b>{$commenta.comname|escape:'html'}</b>
                                                            {else}
                                                                <i><font color="#677882">Admin deleted</font></i>
                                                            {/if}
                                                        </td><td align="right"><b>{$commenta.added}</b>
                                                        </td>
                                                        {if $commenta.editcomlink != ""}
                                                            <td align="right">
                                                                {$commenta.editcomlink} {$commenta.delcomlink}
                                                            </td>
                                                        {/if}
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" style="word-break: break-all;word-wrap: break-word;">
                                                            {$commenta.commenttxt}
                                                        </td>
                                                    </tr>
                                                    {if !empty($commenta.edittime)}
                                                        <tr>
                                                            <td colspan="3">
                                                                <span style="font-size:6pt;color:grey;">last edit {$commenta.edittime} by {if !empty($commenta.editname)}{$commenta.editname}{else}<i><font color="#677882">Admin deleted</font></i>{/if}</span>
                                                            </td>
                                                        </tr>
                                                    {/if}
                                                {/foreach}
                                            </table>
                                        {/if}
                                        {if $protest.commentdata == "None"}
                                            {$protest.commentdata}
                                        {/if}
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            {/foreach}
            </tbody>
            </table>
        </div>
    </div>
</div>
    
    <script>InitAccordion('tr.opener2', 'div.opener2', 'protests');</script>
{/if}
<!-- end ban protests -->