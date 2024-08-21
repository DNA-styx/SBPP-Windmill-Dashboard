<!-- Start admin overrides -->
<div class="tabcontent" id="Overrides">
    {if NOT $permission_addadmin}
        Access Denied!
    {else}
        {if $overrides_error != ""}
            <script type="text/javascript">
                ShowBox("Error", "{$overrides_error}", "red");
            </script>
        {/if}
        {if $overrides_save_success}
            <script type="text/javascript">
                ShowBox("Overrides updated", "The changes have been saved successfully.", "green",
                "index.php?p=admin&c=admins");
            </script>
        {/if}
        <div id="add-group">
            <form action="" method="post">

                <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
                    <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
                        <div class="w-full">

                            <span class="text-gray-700 dark:text-gray-400">
                                With Overrides you can change the flags or permissions on any command, either globally, or
                                for a specific group, without editing plugin source code.<br>
                                <i>Read about <b><a
                                            href="http://wiki.alliedmods.net/Overriding_Command_Access_%28SourceMod%29"
                                            title="Overriding Command Access (SourceMod)" target="_blank">overriding command
                                            access</a></b> in the AlliedModders Wiki!</i><br><br>
                                Blanking out an overrides' name will delete it.<br><br>
                            </span>
                            <br>

                            <table class="w-full whitespace-no-wrap">
                                <thead>
                                    <tr
                                        class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                        <th class="px-4 py-3">Type</td>
                                        <th class="px-4 py-3">Name</td>
                                        <th class="px-4 py-3">Flags</td>
                                    </tr>
                                </thead>
                                <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
                                    {foreach from=$overrides_list item=override}
                                        <tr class="text-gray-700 dark:text-gray-400">
                                            <td class="px-4 py-3">
                                                <select name="override_type[]">
                                                    <option{if $override.type == "command"} selected="selected" {/if}
                                                        value="command">Command</option>
                                                        <option{if $override.type == "group"} selected="selected" {/if}
                                                            value="group">Group</option>
                                                </select>
                                                <input type="hidden" name="override_id[]" value="{$override.id}">
                                            </td>
                                        <td class="px-4 py-3""><input name=" override_name[]"
                                        value="{$override.name|smarty_htmlspecialchars}"></td>
                                    <td class="px-4 py-3"><input name="override_flags[]"
                                            value="{$override.flags|smarty_htmlspecialchars}"></td>
                                </tr>
                                {/foreach}
                                <tr class="text-gray-700 dark:text-gray-400">
                                    <td class="px-4 py-3">
                                        <select name="new_override_type"
                                            class="select block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                            <option value="command">Command</option>
                                            <option value="group">Group</option>
                                        </select>
                                    </td>
                                    <td class="px-4 py-3"><input name="new_override_name"
                                            class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                                    </td>
                                    <td class="px-4 py-3"><input name="new_override_flags"
                                            class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <div class="flex mt-6 text-sm">
                            <div class="flex items-center">
                                {sb_button text="Save" class="ok block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="oversave" submit=true}
                                &nbsp;
                                {sb_button text="Back" onclick="history.go(-1)" class="cancel block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="oback"}
                                </div>
                            </div>
            </form>
        </div>
    </div>
    </div>
    </div>
{/if}
</div>
<!-- End admin overrides -->