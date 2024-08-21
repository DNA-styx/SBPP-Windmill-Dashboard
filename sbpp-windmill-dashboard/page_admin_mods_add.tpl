<!-- start add mods page -->
{if NOT $permission_add}
    Access Denied!
{else}
    <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
        <div id="add-group1">
            <table width="90%" style="border-collapse:collapse;" id="group.details" cellpadding="3">
                <tr>
                    <td>
                        <div align="left">
                            <div class="rowdesc text-gray-700 dark:text-gray-400">Mod Name</div>
                            <input type="hidden" id="fromsub" value="">
                            <input type="text"
                                class="block mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                                TABINDEX=1 class="textbox" id="name" name="name">
                        </div>
                        <div class="text-xs text-gray-600 dark:text-gray-400">
                            Type the name of the mod you are adding.
                        </div>
                        <div id="name.msg" class="badentry text-xs text-red-600 dark:text-red-400"></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="rowdesc text-gray-700 dark:text-gray-400">Mod Folder</div>
                        <div align="left">
                            <input type="text"
                                class="block mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                                TABINDEX=2 class="textbox" id="folder" name="folder">
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
                        <div align="left">
                            <div class="rowdesc text-gray-700 dark:text-gray-400">Steam Universe Number</div>
                            <input type="text"
                                class="block mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                                TABINDEX=3 class="textbox" id="steam_universe" name="steam_universe" value="0">
                        </div>
                        <div class="text-xs text-gray-600 dark:text-gray-400">
                            (STEAM_<b>X</b>:Y:Z) Some games display the steamid differently than others. Type the first
                            number in the SteamID (<b>X</b>) depending on how it's rendered by this mod. (Default: 0).
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="rowdesc text-gray-700 dark:text-gray-400">Enabled?</div>
                    <div align="left">
                        <input type="checkbox" TABINDEX=4 id="enabled" name="enabled" value="1" checked="checked"
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
                        {sb_button text="Upload Mod Icon" onclick="childWindow=open('pages/admin.uploadicon.php','upload','resizable=yes,width=350,height=350');" class="save block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="upload"}
                    </div>
                    <div class="text-xs text-gray-600 dark:text-gray-400">
                        Click here to upload an icon to associate with this mod.
                    </div>
                    <div id="icon.msg" class="badentry text-xs text-red-600 dark:text-red-400"></div>
                </td>
            </tr>
            <tr>
                <td class="flex items-center">
                    {sb_button text="Add Mod" onclick="ProcessMod();" class="ok block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="amod"}&nbsp;
                    &nbsp;&nbsp;
                    {sb_button text="Cancel" onclick="document.location='index.php?p=admin&c=mods'" class="cancel block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="back" submit=false}
                    </td>
                </tr>
            </table>
        </div>
    </div>
{/if}
<!-- end add mods page -->