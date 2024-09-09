<!-- Start admin bans import -->
{if NOT $permission_import}
    Access Denied!
{else}
    <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
        <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
            <div class="w-full">

                <form action="" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="action" value="importBans">

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Select File to Import</span>
                        <input type="file" TABINDEX=1 class="file" id="importFile" name="importFile">
                    </label>
                    <span class="text-xs text-gray-600 dark:text-gray-400">
                        Select the banned_users.cfg or banned_ip.cfg file to upload and add bans.
                    </span>
                    <div class="text-xs text-red-600 dark:text-red-400">
                        <span id="file.msg" class="badentry"></span>
                    </div>

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Get Names?</span>
                        <input type="checkbox" name="friendsname" id="friendsname"
                            class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                    </label>
                    <span class="text-xs text-gray-600 dark:text-gray-400">
                        Check this box, if you want to get the names of the players from their steam community profile.
                        Just works with banned_users.cfg.
                    </span>
                    <div class="text-xs text-red-600 dark:text-red-400">
                        <span id="friendsname.msg" class="badentry"></span>
                    </div>

                    {sb_button text="Import Bans" id="iban" submit=true class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}

                </form>

            </div>
        </div>
    </div>

    {if !$extreq}
        <script>
            $('friendsname').disabled = true;
        </script>
    {/if}
{/if}
<!-- end admin bans import -->