<!-- Start add group page -->
{if NOT $permission_addgroup}
    Access Denied!
{else}
    <div class="px-4 py-3 mb-2 bg-white rounded-lg shadow-md dark:bg-gray-800">
        <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
            <div class="w-full">

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Group Name</span>
                    <input type="text" TABINDEX=1 id="groupname" name="groupname"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Type the name of the new group you want to create.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="name.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Group Type</span>
                    <select onchange="UpdateGroupPermissionCheckBoxes()" TABINDEX=2 name="grouptype" id="grouptype"
                        class="select block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                        <option value="0">Please Select...</option>
                        <option value="1">Web Admin Group</option>
                        <option value="2">Server Admin Group</option>
                        <option value="3">Server Group</option>
                    </select>
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    This defines the type of group you are about to create. This helps identify and catagorize the groups
                    list.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="type.msg" class="badentry"></div>
                </span>

                <table>
                    <tr
                        class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                        <td id="perms" valign="top" style="height:5px;overflow:hidden;"></td>
                    </tr>
                </table>

                <span class="flex items-center">
                    {sb_button text="Save Changes" onclick="ProcessGroup();" id="agroup" submit=false class="ok block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}
                </span>

            </div>
        </div>
    </div>
{/if}
<!-- end add group page -->