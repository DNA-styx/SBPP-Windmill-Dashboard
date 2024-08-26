<form action="" method="post">
    <div id="admin-page-content">
        <div id="add-group">

            <div class="px-4 py-3 mb-2 bg-white rounded-lg shadow-md dark:bg-gray-800" id="add-group1">
                <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
                    <div class="w-full">

                        <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Admin Groups</h4>
                        <p class="text-gray-600 dark:text-gray-400">
                            Choose the groups that you want <b>{$group_admin_name}</b> to appear in.
                        </p>
                        <br>

                        <label class="block text-sm">
                            <span class="text-gray-700 dark:text-gray-400">Web Admin Group</span>
                            <div align="left" id="wadmingroup">
                                <select name="wg" id="wg"
                                    class="select nputbox block mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                    <option value="-1">No Group</option>
                                    <optgroup label="Groups" style="font-weight:bold;">
                                        {foreach from=$web_lst item=wg}
                                            <option value="{$wg.gid}" {if $wg.gid == $group_admin_id} selected="selected"
                                                {/if}>{$wg.name}</option>
                                        {/foreach}
                                    </optgroup>
                                </select>
                            </div>
                        </label>
                        <span class="text-xs text-gray-600 dark:text-gray-400">
                            Choose the group you want this admin to appear in for web permissions
                        </span>
                        <span class="text-xs text-red-600 dark:text-red-400">
                            <div id="wgroup.msg" class="badentry"></div>
                        </span>

                        <label class="block text-sm">
                            <span class="text-gray-700 dark:text-gray-400">Server Admin Group</span>
                            <div align="left" id="wadmingroup">
                                <select name="wg" id="wg"
                                    class="select nputbox block mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                    <option value="-1">No Group</option>
                                    <optgroup label="Groups" style="font-weight:bold;">
                                        {foreach from=$web_lst item=wg}
                                            <option value="{$wg.gid}" {if $wg.gid == $group_admin_id} selected="selected"
                                                {/if}>{$wg.name}</option>
                                        {/foreach}
                                    </optgroup>
                                </select>
                            </div>
                        </label>
                        <span class="text-xs text-gray-600 dark:text-gray-400">
                            Choose the group you want this admin to appear in for server admin permissions
                        </span>
                        <span class="text-xs text-red-600 dark:text-red-400">
                            <div id="sgroup.msg" class="badentry"></div>
                        </span>

                        <span class="flex items-center">
                            {sb_button text="Save Changes" id="agroups" submit=true class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}
                            &nbsp;
                            {sb_button text="Back" onclick="document.location='index.php?p=admin&c=admins'" id="aback" class="cancel block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}
                        </span>

                    </div>
                </div>
            </div>
        </div>
    </div>
</form>