<!-- Start settings features page -->
<div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
        <div class="w-full">

            <form action="" method="post">
                <input type="hidden" name="settingsGroup" value="features">

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Make Export Bans Public</span>
                    <input type="checkbox" name="export_public" id="export_public"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box to enable the entire ban list to be publically downloaded and shared.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Enable KickIt</span>
                    <input type="checkbox" name="enable_kickit" id="enable_kickit"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box to kick a player when a ban is posted.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Enable Group Banning</span>
                    {if $steamapi}
                        <input type="checkbox" name="enable_groupbanning" id="enable_groupbanning"
                            class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                    {else}
                        <input type="checkbox" name="enable_groupbanning" id="enable_groupbanning" disabled
                            class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                        <br /><span class="text-xs text-red-600 dark:text-red-400">You haven't set a valid steamapi key in the config</span>
                    {/if}
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box, if you want to enable banning of whole steam community groups.
                </span>
                <div class="text-xs text-red-600 dark:text-red-400">
                    <span id="enable_groupbanning.msg" class="badentry"></span>
                </div>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Enable Friends Banning</span>
                    <input type="checkbox" name="enable_friendsbanning" id="enable_friendsbanning"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box, if you want to enable banning all steam community friends of a player.
                </span>
                <div class="text-xs text-red-600 dark:text-red-400">
                    <span id="enable_friendsbanning.msg" class="badentry"></span>
                </div>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Enable Admin Rehashing</span>
                    <input type="checkbox" name="enable_adminrehashing" id="enable_adminrehashing"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box, if you want to enable the admin rehashing everytime an admin/group has been changed.
                </span>
                <div class="text-xs text-red-600 dark:text-red-400">
                    <span id="enable_adminrehashing.msg" class="badentry"></span>
                </div>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Enable Normal Login</span>
                    <input type="checkbox" name="enable_steamlogin" id="enable_steamlogin"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box, if you want to enable the Normal login option on the login form.
                </span>
                <div class="text-xs text-red-600 dark:text-red-400">
                    <span id="enable_steamlogin.msg" class="badentry"></span>
                </div>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Make Comments Visable to Public</span>
                    <input type="checkbox" name="enable_publiccomments" id="enable_publiccomments"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box, if you want to make admin comments on bans viewable by everyone.
                </span>
                <div class="text-xs text-red-600 dark:text-red-400">
                    <span id="enable_publiccomments.msg" class="badentry"></span>
                </div>

                {sb_button text="Save Changes" id="fsettings" submit=true class="ok w-full block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" }

            </form>
        </div>
    </div>
</div>
<!-- end settings features page -->