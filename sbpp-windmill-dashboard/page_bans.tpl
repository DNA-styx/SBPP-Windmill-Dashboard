<!-- start bans page -->
{if $comment}

    <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800" id="add-group1">
        <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
            <div class="w-full">

                <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">{$commenttype} Comment</h4>

                <label class="block mt-4 text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Comment</span>
                    <textarea rows="10" cols="60" id="commenttext" name="commenttext" {if !$canedit}disabled{/if}
                        class="submit-fields w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-textarea focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">{$commenttext}</textarea>
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Type the text you would like to say.
                </span>
                <div class="text-xs text-red-600 dark:text-red-400">
                    <span id="commenttext.msg" class="badentry"></span>
                </div>

                <input type="hidden" name="bid" id="bid" value="{$comment}">
                <input type="hidden" name="ctype" id="ctype" value="{$ctype}">
                {if $cid != ""}
                    <input type="hidden" name="cid" id="cid" value="{$cid}">
                {else}
                    <input type="hidden" name="cid" id="cid" value="-1">
                {/if}
                <input type="hidden" name="page" id="page" value="{$page}">
                {if $canedit}
                    <span class="flex items-center">
                        {sb_button text="$commenttype Comment" onclick="ProcessComment();" class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="acom" submit=false}&nbsp;
                        &nbsp;
                        {sb_button text="Back" onclick="history.go(-1)" class="cancel block w-full  px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="aback"}
                    </span>
                {/if}

                <br>
                <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Comments</h4>
                {foreach from=$othercomments item="com"}
                    <label class="block mt-4 text-sm">
                        <span class="text-gray-700 dark:text-gray-400">{$com.comname} {$com.added}</span>
                        <textarea rows="3" cols="60" id="commenttext" name="commenttext" disabled
                            class="submit-fields w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-textarea focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">{$com.commenttxt}</textarea>
                    </label>
                    {if $com.editname != ''}
                        <span class="text-xs text-gray-600 dark:text-gray-400">
                            Last Edit {$com.edittime} by {$com.editname}
                        </span>
                    {/if}
                {/foreach}

            </div>
        </div>
    </div>

{else}

    {load_template file='admin.bans.search'}

    <div
        class="flex items-center justify-between p-4 mb-8 text-sm px-4 py-3 bg-white rounded-lg shadow-md dark:bg-gray-800">
        <div class="flex items-center text-gray-600 dark:text-gray-400">
            <span>
                {$ban_nav}
            </span>
        </div>
        <div class="flex items-center text-gray-600 dark:text-gray-400">
            <span>
                <a href="index.php?p=banlist&hideinactive={if $hidetext == 'Hide'}true{else}false{/if}{$searchlink|smarty_htmlspecialchars}"
                    rel="nofollow" title="{$hidetext} inactive">{$hidetext} inactive</a> | <i>Total Bans: {$total_bans}</i>
            </span>
        </div>
    </div>

    <div id="mainwrapper" class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
        <div class="w-full overflow-x-auto">

            <div id="banlist">
                <table class="w-full whitespace-no-wrap">
                    <thead>
                        <tr
                            class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                            {if $view_bans}
                                <td class="px-4 py-3">
                                    <input type="checkbox"
                                        class="ok text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"
                                        title="Select All" name="tickswitch" id="tickswitch" onclick="TickSelectAll()">
                                    </input>
                                </td>
                            {/if}
                            <td class="px-4 py-3"><b>MOD/Country</b></td>
                            <td class="px-4 py-3"><b>Date</b></td>
                            <td class="px-4 py-3"><b>Player</b></td>
                            {if !$hideadminname}
                                <td class="px-4 py-3"><b>Admin</b></td>
                            {/if}
                            <td class="px-4 py-3"><b>Length</b></td>
                        </tr>
                    </thead>
                    <tbody class="bg-white dark:bg-gray-800">
                        {foreach from=$ban_list item=ban name=banlist}
                            <tr class="opener text-gray-700 dark:text-gray-400 divide-y dark:divide-gray-700"
                                {if $ban.server_id != 0}
                                onclick="xajax_ServerHostPlayers({$ban.server_id}, 'id', 'host_{$ban.ban_id}');" {/if}>
                                {if $view_bans}
                                    <td class="px-4 py-3">
                                        <input type="checkbox"
                                            class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"
                                            name="chkb_{$smarty.foreach.banlist.index}" id="chkb_{$smarty.foreach.banlist.index}"
                                            value="{$ban.ban_id}">
                                    </td>
                                {/if}
                                <td class="flex px-4 py-3 items-center">{$ban.mod_icon}</td>
                                <td class="px-4 py-3">{$ban.ban_date}</td>
                                <td class="px-4 py-3">
                                    <div style="float:left;">
                                        {if empty($ban.player)}
                                            <i>no nickname present</i>
                                        {else}
                                            {$ban.player|escape:'html'|smarty_stripslashes}
                                        {/if}
                                    </div>
                                    {if $ban.demo_available}
                                        <div style="float:right;">
                                            <i class="fas fa-video fa-lg"></i>
                                        </div>
                                    {/if}
                                    {if $view_comments && $ban.commentdata != "None" && $ban.commentdata|@count > 0}
                                        <div style="float:right;">
                                            {$ban.commentdata|@count} <i class="fas fa-clipboard-list fa-lg"></i>
                                        </div>
                                    {/if}
                                </td>
                                {if !$hideadminname}
                                    <td class="px-4 py-3">
                                        {if !empty($ban.admin)}
                                            {$ban.admin|escape:'html'}
                                        {else}
                                            <i>Admin deleted</i>
                                        {/if}
                                    </td>
                                {/if}
                                <td class="px-4 py-3">{$ban.banlength}</td>
                            </tr>
                            <!-- ###############[ Start Sliding Panel ]################## -->
                            <tr class="text-gray-700 dark:text-gray-400">
                                <td colspan="7">
                                    <div class="opener">
                                        <table>
                                            <tr>
                                                <td class="px-4 py-3" colspan="3"><b>Ban Details</b></td>
                                            </tr>
                                            <tr>
                                                <td class="px-4">Player</td>
                                                <td class="px-4">
                                                    {if empty($ban.player)}
                                                        <i>no nickname present</i>
                                                    {else}
                                                        {$ban.player|escape:'html'|smarty_stripslashes}
                                                    {/if}
                                                </td>
                                                <!-- ###############[ Start Admin Controls ]################## -->
                                                {if $view_bans}
                                                    <td rowspan="{if $ban.unbanned}15{else}13{/if}" class="opener">
                                                        <div class="ban-edit">
                                                            <aside
                                                                class="w-full rounded-lg border-2 border-purple-600 p-4 mt-16 max-w-sm mx-auto">
                                                                <ul>
                                                                    {if $ban.unbanned && $ban.reban_link != false}
                                                                        <li class="relative px-2 py-2">
                                                                            <button
                                                                                class="windmill-button px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 border border-transparent rounded-lg focus:outline-none">
                                                                                {$ban.reban_link}
                                                                            </button>
                                                                        </li>
                                                                    {/if}
                                                                    <li class="relative px-2 py-2">
                                                                        <button
                                                                            class="windmill-button px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 border border-transparent rounded-lg focus:outline-none">
                                                                            {$ban.blockcomm_link}
                                                                        </button>
                                                                    </li>
                                                                    <li class="relative px-2 py-2">
                                                                        <button
                                                                            class="windmill-button px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 border border-transparent rounded-lg focus:outline-none">
                                                                            {$ban.demo_link}
                                                                        </button>
                                                                    </li>
                                                                    <li class="relative px-2 py-2">
                                                                        <button
                                                                            class="windmill-button px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 border border-transparent rounded-lg focus:outline-none">
                                                                            {$ban.addcomment}
                                                                        </button>
                                                                    </li>

                                                                    {if $ban.type == 0}
                                                                        {if $groupban}
                                                                            <li class="relative px-2 py-2">
                                                                                <button
                                                                                    class="windmill-button px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 border border-transparent rounded-lg focus:outline-none">
                                                                                    {$ban.groups_link}
                                                                                </button>
                                                                            </li>
                                                                        {/if}
                                                                        {if $friendsban}
                                                                            <li class="relative px-2 py-2">
                                                                                <button
                                                                                    class="windmill-button px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 border border-transparent rounded-lg focus:outline-none">
                                                                                    {$ban.friend_ban_link}
                                                                                </button>
                                                                            </li>
                                                                        {/if}
                                                                    {/if}
                                                                    {if ($ban.view_edit && !$ban.unbanned)}
                                                                        <li class="relative px-2 py-2">
                                                                            <button
                                                                                class="windmill-button px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 border border-transparent rounded-lg focus:outline-none">
                                                                                {$ban.edit_link}
                                                                            </button>
                                                                        </li>

                                                                    {/if}
                                                                    {if ($ban.unbanned == false && $ban.view_unban)}
                                                                        <li class="relative px-2 py-2">
                                                                            <button
                                                                                class="windmill-button px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 border border-transparent rounded-lg focus:outline-none">
                                                                                {$ban.unban_link}
                                                                            </button>
                                                                        </li>
                                                                    {/if}
                                                                    {if $ban.view_delete}
                                                                        <li class="relative px-2 py-2">
                                                                            <button
                                                                                class="windmill-button px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 border border-transparent rounded-lg focus:outline-none">
                                                                                {$ban.delete_link}
                                                                            </button>
                                                                        </li>
                                                                    {/if}
                                                                </ul>
                                                            </aside>
                                                        </div>
                                                    </td>
                                                {else}
                                                    <td width="30%" rowspan="{if $ban.unbanned}13{else}11{/if}"
                                                        class="listtable_2 opener">
                                                        <div class="ban-edit">
                                                            <ul>
                                                                <li>
                                                                    <button
                                                                        class="windmill-button px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 border border-transparent rounded-lg focus:outline-none">
                                                                        {$ban.demo_link}
                                                                    </button>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                {/if}
                                                <!-- ###############[ End Admin Controls ]##################### -->
                                            </tr>
                                            <tr>
                                                <td class="px-4">Steam ID</td>
                                                <td class="px-4">
                                                    {if empty($ban.steamid)}
                                                        <i>>No Steam ID present</i>
                                                    {else}
                                                        {$ban.steamid}
                                                    {/if}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="px-4">Steam3 ID</td>
                                                <td class="px-4">
                                                    {if empty($ban.steamid)}
                                                        <i>>No Steam3 ID present</i>
                                                    {else}
                                                        <a href="http://steamcommunity.com/profiles/{$ban.steamid3}"
                                                            target="_blank">{$ban.steamid3}</a>
                                                    {/if}
                                                </td>
                                            </tr>
                                            {if $ban.type == 0}
                                                <tr>
                                                    <td class="px-4">Steam Community</td>
                                                    <td class="px-4">
                                                        {if empty($ban.steamid)}
                                                            <i>No Steam Community ID present</i>
                                                        {else}
                                                            <a href="http://steamcommunity.com/profiles/{$ban.communityid}"
                                                                target="_blank">{$ban.communityid}</a>
                                                        {/if}
                                                    </td>
                                                </tr>
                                            {/if}
                                            {if !$hideplayerips}
                                                <tr>
                                                    <td class="px-4">IP address</td>
                                                    <td class="flex px-4 items-center">
                                                        {if $ban.ip == "none"}
                                                            <i>no IP address present</i>
                                                        {else}
                                                            {$ban.ip}
                                                        {/if}
                                                    </td>
                                                </tr>
                                            {/if}
                                            <tr>
                                                <td class="px-4">Invoked on</td>
                                                <td class="px-4">{$ban.ban_date}</td>
                                            </tr>
                                            <tr>
                                                <td class="px-4">Banlength</td>
                                                <td class="px-4">{$ban.banlength}</td>
                                            </tr>
                                            {if $ban.unbanned}
                                                <tr>
                                                    <td class="px-4">Unban reason</td>
                                                    <td class="px-4">
                                                        {if $ban.ureason == ""}
                                                            <i>No reason present</i>
                                                        {else}
                                                            {$ban.ureason}
                                                        {/if}
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="px-4">Unbanned by Admin</td>
                                                    <td class="px-4">
                                                        {if !empty($ban.removedby)}
                                                            {$ban.removedby|escape:'html'}
                                                        {else}
                                                            <i>Admin deleted</i>
                                                        {/if}
                                                    </td>
                                                </tr>
                                            {/if}
                                            <tr>
                                                <td class="px-4">Expires on</td>
                                                <td class="px-4">
                                                    {if $ban.expires == "never"}
                                                        <i>Not applicable</i>
                                                    {else}
                                                        {$ban.expires}
                                                    {/if}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="px-4">Reason</td>
                                                <td class="px-4">{$ban.reason|escape:'html'}</td>
                                            </tr>
                                            {if !$hideadminname}
                                                <tr>
                                                    <td class="px-4">Banned by Admin</td>
                                                    <td class="px-4">
                                                        {if !empty($ban.admin)}
                                                            {$ban.admin|escape:'html'}
                                                        {else}
                                                            <i>Admin deleted</i>
                                                        {/if}
                                                    </td>
                                                </tr>
                                            {/if}
                                            <tr>
                                                <td class="px-4">Banned from</td>
                                                <td class="px-4" {if $ban.server_id != 0} id="host_{$ban.ban_id}" {/if}>
                                                    {if $ban.server_id == 0}
                                                        Web Ban
                                                    {else}
                                                        Please Wait...
                                                    {/if}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="px-4">Total Bans</td>
                                                <td class="px-4">{$ban.prevoff_link}</td>
                                            </tr>
                                            <tr>
                                                <td class="px-4">Blocked ({$ban.blockcount})</td>
                                                <td class="px-4">
                                                    {if $ban.banlog == ""}
                                                        <i>never</i>
                                                    {else}
                                                        {$ban.banlog}
                                                    {/if}
                                                </td>
                                            </tr>
                                            {if $view_comments}
                                                <tr>
                                                    <td class="px-4">Comments</td>
                                                    <td class="px-4" colspan="2">
                                                        {if $ban.commentdata != "None"}
                                                            <table width="100%" border="0">
                                                                {foreach from=$ban.commentdata item=commenta}
                                                                    {if $commenta.morecom}
                                                                        <tr>
                                                                            <td colspan='3'>
                                                                                <hr>
                                                                            </td>
                                                                        </tr>
                                                                    {/if}
                                                                    <tr>
                                                                        <td>
                                                                            {if !empty($commenta.comname)}
                                                                                <b>{$commenta.comname|escape:'html'}</b>
                                                                            {else}
                                                                                <i>Admin deleted</i>
                                                                            {/if}
                                                                        </td>
                                                                        <td align="right">
                                                                            <b>{$commenta.added}</b>
                                                                        </td>
                                                                        {if $commenta.editcomlink != ""}
                                                                            <td align="right">
                                                                                {$commenta.editcomlink} {$commenta.delcomlink}
                                                                            </td>
                                                                        {/if}
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan='3'>{$commenta.commenttxt}</td>
                                                                    </tr>
                                                                    {if !empty($commenta.edittime)}
                                                                        <tr>
                                                                            <td colspan='3'>
                                                                                <span style="font-size:6pt;color:grey;">last edit
                                                                                    {$commenta.edittime} by
                                                                                    {if !empty($commenta.editname)}{$commenta.editname}
                                                                                    {else}<i>Admin deleted</i>
                                                                                    {/if}
                                                                                </span>
                                                                            </td>
                                                                        </tr>
                                                                    {/if}
                                                                {/foreach}
                                                            </table>
                                                        {/if}
                                                        {if $ban.commentdata == "None"}
                                                            {$ban.commentdata}
                                                        {/if}
                                                    </td>
                                                </tr>
                                            {/if}
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <!-- ###############[ End Sliding Panel ]################## -->
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>

        {if $general_unban || $can_delete}
            <div
                class="flex items-center px-4 py-3 text-xs tracking-wide text-gray-500 border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
                &nbsp;&nbsp;L&nbsp;&nbsp;<a href="#" onclick="TickSelectAll();return false;" title="Select All"
                    name="tickswitchlink" id="tickswitchlink">Select All</a>&nbsp;&nbsp;|&nbsp;
                <select name="bulk_action" id="bulk_action" onchange="BulkEdit(this,'{$admin_postkey}');"
                    class="select block mt-1 text-xs dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                    <option value="-1">Action</option>
                {if $general_unban}
                    <option value="U">Unban</option>
                {/if}
                {if $can_delete}
                    <option value="D">Delete</option>
                {/if}
                </select>
            </div>
        {/if}

    <div
        class="flex items-center justify-between px-4 py-3 text-xs tracking-wide text-gray-500 border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
        <div class="flex items-center">
            <span>
            {if $can_export }
                <a href="./exportbans.php?type=steam" title="Export Permanent SteamID Bans">Export Permanent SteamID
                    Bans</a>&nbsp;&nbsp;|&nbsp;
                <a href="./exportbans.php?type=ip" title="Export Permanent IP Bans">Export Permanent IP Bans</a>
            {/if}
            </span>
        </div>
        <span>
        {if $view_bans}
            Web server time: {$smarty.now|date_format:'%d-%b %H:%M'}
        {else}
            &nbsp;
        {/if}
        </span>
    </div>

    </div>
    {literal}
        <script>
            window.addEvent('domready', function() {
                InitAccordion('tr.opener', 'div.opener', 'mainwrapper');
            {/literal}
            {if $view_bans}
                $('tickswitch').value = 0;
            {/if}
            {literal}
            });
        </script>
    {/literal}
{/if}
<!-- end bans page -->