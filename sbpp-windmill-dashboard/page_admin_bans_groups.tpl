{if NOT $permission_addban}
    Access Denied!
{else}
    {if NOT $groupbanning_enabled}
        This feature is disabled! Only follow links!
    {else}
        <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800" id="add-group1">
            <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
                <div class="w-full">

                    {if NOT $list_steam_groups}
                        <span class="text-gray-700 dark:text-gray-400">
                            Here you can add a ban for a whole steam community group.
                        </span>
                        <br>

                        <label class="block text-sm">
                            <span class="text-gray-700 dark:text-gray-400">Group Link</span>
                            <input type="text" TABINDEX=1 id="groupurl" name="groupurl"
                                class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                        </label>
                        <span class="text-xs text-gray-600 dark:text-gray-400">
                            Type the link to a steam community group. e.g. http://steamcommunity.com/groups/interwavestudios
                        </span>
                        <span class="text-xs text-red-600 dark:text-red-400">
                            <div id="groupurl.msg" class="badentry"></div>
                        </span>

                        <label class="block mt-4 text-sm">
                            <span class="text-gray-700 dark:text-gray-400">Group Ban Reason</span>
                            <textarea TABINDEX=2 cols="30" rows="5" id="groupreason" name="groupreason"
                                class="textbox w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-textarea focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></textarea>
                        </label>
                        <span class="text-xs text-gray-600 dark:text-gray-400">
                            Type the reason why you are going to ban this steam community group.
                        </span>
                        <span class="text-xs text-red-600 dark:text-red-400">
                            <div id="groupreason.msg" class="badentry"></div>
                        </span>

                        <div class="flex mt-6 text-sm">
                            <label class="flex items-center dark:text-gray-400">
                                {sb_button text="Add Group Ban" onclick="ProcessGroupBan();" id="agban" submit=false class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}
                                &nbsp;
                                {sb_button text="Back" onclick="history.go(-1)" id="aback" class="cancel block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}
                            </label>
                        </div>

                    {else}

                        <p class="text-gray-700 dark:text-gray-400">
                            All groups the player is member of are listed here. Choose the steam groups you want to ban.
                        </p>
                        <div class="text-gray-700 dark:text-gray-400" id="steamGroupsText" name="steamGroupsText">Loading the
                            groups...</div>
                        <div class="text-gray-700 dark:text-gray-400" id="steamGroups" name="steamGroups" style="display:none;">
                            <table id="steamGroupsTable" name="steamGroupsTable">
                                <tr>
                                    <td height="16" class="listtable_1" style="padding:0px;width:3px;" align="center">
                                        <div class="ok" style="height:16px;width:16px;cursor:pointer;" id="tickswitch"
                                            name="tickswitch" onclick="TickSelectAll();"></div>
                                    </td>
                                    <td height="16" class="listtable_top" align="center"><b>Group</b></td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;L&nbsp;&nbsp;<a href="#" onclick="TickSelectAll();return false;" title="Select All"
                                name="tickswitchlink" id="tickswitchlink">Select All</a><br /><br />
                            <label class="block mt-4 text-sm">
                                <span class="text-gray-700 dark:text-gray-400">Group Ban Reason</span>
                                <textarea TABINDEX=2 id="groupreason" name="groupreason"
                                    class="submit-fields w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-textarea focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></textarea>
                            </label>
                            <span class="text-xs text-gray-600 dark:text-gray-400">
                                Type the reason why you are going to ban this steam community group.
                            </span>
                            <span class="text-xs text-red-600 dark:text-red-400">
                                <div id="groupreason.msg" class="badentry"></div>
                            </span>
                            <input type="button" onclick="CheckGroupBan();" name="gban" id="gban" onmouseover="ButtonOver('gban');"
                                onmouseout="ButtonOver('gban');" value="Add Group Ban"
                                class="btn ok block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple">
                        </div>
                        <div id="steamGroupStatus" name="steamGroupStatus" width="100%"></div>
                        <script type="text/javascript">
                            $('tickswitch').value = 0;xajax_GetGroups('{$list_steam_groups}');
                        </script>
                    {/if}

                </div>
            </div>
        </div>
    {/if}
{/if}