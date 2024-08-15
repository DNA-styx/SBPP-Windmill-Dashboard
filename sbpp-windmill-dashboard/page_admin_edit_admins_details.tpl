<form action="" method="post">
    <div id="admin-page-content">

            <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800" id="add-group">
                <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
                    <div class="w-full">

                        <label class="block text-sm">
                            <span class="text-gray-700 dark:text-gray-400">Admin Login</span>
                            <input type="text" id="adminname" name="adminname" value="{$user}"
                                class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                        </label>
                        <span class="text-xs text-gray-600 dark:text-gray-400">
                            This is the username the admin will use to login-to their admin panel. Also this will
                            identify the admin on any bans they make.
                        </span>
                        <span class="text-xs text-red-600 dark:text-red-400">
                            <div id="adminname.msg" class="badentry"></div>
                        </span>
                        <label class="block text-sm">
                            <span class="text-gray-700 dark:text-gray-400">Admin STEAM ID</span>
                            <input type="text" id="steam" name="steam" value="{$authid}"
                                class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                        </label>
                        <span class="text-xs text-gray-600 dark:text-gray-400">
                            This is the admin's 'STEAM' id. This must be set so that admins can use their admin rights
                            ingame.
                        </span>
                        <span class="text-xs text-red-600 dark:text-red-400">
                            <div id="steam.msg" class="badentry"></div>
                        </span>

                        <label class="block text-sm">
                            <span class="text-gray-700 dark:text-gray-400">Admin Email</span>
                            <input type="text" id="email" name="email" value="{$email}"
                                class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                        </label>
                        <span class="text-xs text-gray-600 dark:text-gray-400">
                            Set the admins e-mail address. This will be used for sending out any automated messages from
                            the system, and for use when you forget your password.
                        </span>
                        <span class="text-xs text-red-600 dark:text-red-400">
                            <div id="email.msg" class="badentry"></div>
                        </span>

                        {if $change_pass}

                            <label class="block text-sm">
                                <span class="text-gray-700 dark:text-gray-400">Admin Password</span>
                                <input type="password" id="password" name="password"
                                    class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                            </label>
                            <span class="text-xs text-gray-600 dark:text-gray-400">
                                The password the admin will need to access the admin panel.
                            </span>
                            <span class="text-xs text-red-600 dark:text-red-400">
                                <div id="password.msg" class="badentry"></div>
                            </span>

                            <label class="block text-sm">
                                <span class="text-gray-700 dark:text-gray-400">Admin Password (confirm)</span>
                                <input type="password" id="password2" name="password2"
                                    class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                            </label>
                            <span class="text-xs text-gray-600 dark:text-gray-400">
                                Type the password again to confirm.
                            </span>
                            <span class="text-xs text-red-600 dark:text-red-400">
                                <div id="password2.msg" class="badentry"></div>
                            </span>

                            <label class="block mt-4 text-sm">
                                <span class="text-gray-700 dark:text-gray-400">Server Password</span>
                                <input type="checkbox" id="a_useserverpass" name="a_useserverpass" {if $a_spass}
                                    checked="checked" {/if} TABINDEX=6
                                    onclick="$('a_serverpass').disabled = !$(this).checked;"
                                    class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                <input type="password" TABINDEX=7 name="a_serverpass" id="a_serverpass" {if !$a_spass}
                                    disabled="disabled" {/if}
                                    class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                                <div class="text-xs text-gray-600 dark:text-gray-400">
                                    If this box is checked, you will need to specify this password in the game server before
                                    you can
                                    use your admin rights.
                                    (<a href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords"
                                        title="SourceMod Password Info" target="_blank">More</a>)
                                </div>
                                <span class="text-xs text-red-600 dark:text-red-400">
                                    <div id="a_serverpass.msg" class="badentry"></div>
                                </span>

                            {/if}

                            <div class="flex mt-6 text-sm">
                                <label class="flex items-center dark:text-gray-400">
                                    {sb_button text="Save Changes" id="editmod" submit=true class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}
                                    &nbsp;
                                    {sb_button text="Back" onclick="history.go(-1)" id="back" submit=false class="cancel block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}
                            </div>

                    </div>
                </div>
            </div>

    </div>
</form>