<!-- Start of edit mod -->
<div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <div id="add-group1">
        <form action="" method="post">
            <div id="add-group">
                <input type="hidden" name="insert_type" value="add">
                <table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
                    <tr>
                        <td>
                            <div align="left">
                                <div class="rowdesc text-gray-700 dark:text-gray-400">Mod Name</div>
                                <input type="hidden" id="icon_hid" name="icon_hid" value="{$mod_icon}">
                                <input type="text" TABINDEX=1 id="name" name="name" value="{$name}"
                                    class="block mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                            </div>
                            <div class="text-xs text-gray-600 dark:text-gray-400">
                                Type the name of the mod you are editting.
                            </div>
                            <div id="name.msg" class="badentry text-xs text-red-600 dark:text-red-400"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="rowdesc text-gray-700 dark:text-gray-400">Mod Folder</div>
                            <div>
                                <input type="text" TABINDEX=2 id="folder" name="folder" value="{$folder}"
                                    class="block mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                            </div>
                            <div class="text-xs text-gray-600 dark:text-gray-400">
                                Type the name of this mod's folder. For example, Counter-Strike: Source's mod folder is
                                'cstrike'.
                            </div>
                            <div id="folder.msg" class="badentry text-xs text-red-600 dark:text-red-400"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="rowdesc text-gray-700 dark:text-gray-400">Steam Universe Number</div>
                            <div align="left">
                                <input type="text" TABINDEX=3 id="steam_universe" name="steam_universe"
                                    value="{$steam_universe}"
                                    class="block mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                            </div>
                            <div class="text-xs text-gray-600 dark:text-gray-400">
                                (STEAM_<b>X</b>:Y:Z) Some games display the steamid differently than others. Type the
                                first number in the SteamID (<b>X</b>) depending on how it's rendered by this mod.
                                (Default: 0).
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="rowdesc text-gray-700 dark:text-gray-400">Enabled</div>
                            <div align="left">
                                <input type="checkbox" TABINDEX=4 id="enabled" name="enabled" value="1"
                                    class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                            </div>
                            <div class="text-xs text-gray-600 dark:text-gray-400">
                                Select if this mod is enabled and assignable to bans and servers.
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="rowdesc text-gray-700 dark:text-gray-400">Upload Icon</div>
                            <div align="left">
                                {sb_button text="Upload MOD Icon" onclick="childWindow=open('pages/admin.uploadicon.php','upload','resizable=yes,width=350,height=350');" class="save ok block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="upload" submit=false}
                            </div>
                            <div id="icon.msg" class="badentry text-xs text-red-600 dark:text-red-400"
                                style="display:block;">
                                {if $mod_icon}
                                Uploaded: <b>{$mod_icon}</b>
                                {/if}
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="flex items-center">
                            {sb_button text="Save Changes" class="ok block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="editmod" submit=true}
                            &nbsp;&nbsp;
                            {sb_button text="Cancel" onclick="document.location='index.php?p=admin&c=mods'" class="cancel block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="back" submit=false}
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </div>
</div>
<!-- end of edit mod -->