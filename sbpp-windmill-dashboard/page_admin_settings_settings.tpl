<!-- Start admin settings Page -->
<form action="" method="post">
    <input type="hidden" name="settingsGroup" value="mainsettings">

    <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800" id="add-group1">
        <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
            <div class="w-full">

                <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Main Settings</h4>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Title</span>
                    <input type="text" TABINDEX=1 id="template_title" name="template_title" value="{$config_title}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Define the title shown in the title of your browser.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Path to logo</span>
                    <input type="text" TABINDEX=2 id="template_logo" name="template_logo" value="{$config_logo}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Here you can define a new location for the logo, so you can use your own image.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Min password length</span>
                    <input type="text" TABINDEX=3 id="config_password_minlength" name="config_password_minlength"
                        value="{$config_min_password}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Define the shortest length a password can be.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="minpasslength.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Date format</span>
                    <input type="text" TABINDEX=4 id="config_dateformat" name="config_dateformat"
                        value="{$config_dateformat}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Here you can change the date format, displayed in the banlist and other pages. <a
                        href="http://www.php.net/date" target="_blank">See: PHP date()</a>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Auth Maxlife</span>
                    <input type="text" TABINDEX=4 id="auth_maxlife" name="auth_maxlife" value="{$auth_maxlife}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Max lifetime for auth tokens. (in minutes)
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Auth Maxlife (remember me)</span>
                    <input type="text" TABINDEX=4 id="auth_maxlife_remember" name="auth_maxlife_remember"
                        value="{$auth_maxlife_remember}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Max lifetime for auth tokens with remember me enabled (in minutes).
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Auth Maxlife (steam login)</span>
                    <input type="text" TABINDEX=4 id="auth_maxlife_steam" name="auth_maxlife_steam"
                        value="{$auth_maxlife_steam}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Max lifetime for auth tokens via steam login (in minutes).
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Debugmode</span>
                    <input type="checkbox" TABINDEX=6 name="config_debug" id="config_debug"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box to enable the debugmode permanently.
                </span>

                <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Dashboard Settings</h4>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Intro Title</span>
                    <input type="text" TABINDEX=7 id="dash_intro_title" name="dash_intro_title"
                        value="{$config_dash_title}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Set the title for the dashboard introduction.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="dash.intro.msg" class="badentry"></div>
                </span>

                <label class="block mt-4 text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Intro Text</span>
                    <textarea TABINDEX=8 cols="80" rows="20" id="dash_intro_text" name="dash_intro_text"
                        class="w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-textarea focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">{$config_dash_text}</textarea>
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Set the text for the dashboard introduction.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Disable Log Popup</span>
                    <input type="checkbox" TABINDEX=8 name="dash_nopopup" id="dash_nopopup"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box to disable the log info popup and use direct link.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Enable Protest Ban</span>
                    <input type="checkbox" TABINDEX=9 name="enable_protest" id="enable_protest"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box to enable the protest ban page.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Enable Submit Ban</span>
                    <input type="checkbox" TABINDEX=10 name="enable_submit" id="enable_submit"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box to enable the submit ban page.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Enable Commslist</span>
                    <input type="checkbox" TABINDEX=10 name="enable_commslist" id="enable_commslist"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box to enable the commslist page.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Only Send One Email</span>
                    <input type="checkbox" TABINDEX=9 name="protest_emailonlyinvolved" id="protest_emailonlyinvolved"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box to only send the protest notification email to the admin who banned the protesting
                    player.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Default Page</span>
                    <select TABINDEX=11 name="default_page" id="default_page"
                        class="inputbox block mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                        <option value="0">Dashboard</option>
                        <option value="1">Ban List</option>
                        <option value="2">Servers</option>
                        <option value="3">Submit a ban</option>
                        <option value="4">Protest a ban</option>
                    </select>
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Choose the page that will be the first page people will see.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Clear Cache</span>
                    {sb_button text="Clear Cache" onclick="xajax_ClearCache();" id="clearcache" submit=false class="cancel block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Click this button, to clean the cache folder.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="clearcache.msg"></div>
                </span>

                <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Banlist Settings</h4>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Items Per Page</span>
                    <input type="text" TABINDEX=12 id="banlist_bansperpage" name="banlist_bansperpage"
                        value="{$config_bans_per_page}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Choose how many items to show on each page.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="bansperpage.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Hide Admin Name</span>
                    <input type="checkbox" TABINDEX=13 name="banlist_hideadmname" id="banlist_hideadmname"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box, if you want to hide the name of the admin in the baninfo.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="banlist_hideadmname.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">No Country Research</span>
                    <input type="checkbox" TABINDEX=14 name="banlist_nocountryfetch" id="banlist_nocountryfetch"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box, if you don't want to display the country out of an IP in the banlist. Use if you
                    encounter display problems.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="banlist_nocountryfetch.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Hide Player IP</span>
                    <input type="checkbox" TABINDEX=15 name="banlist_hideplayerips" id="banlist_hideplayerips"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Check this box, if you want to hide the player IP from the public.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="banlist_hideplayerips.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Custom Banreasons</span>
                    <table id="custom.reasons" name="custom.reasons">
                        {foreach from=$bans_customreason item="creason"}
                            <tr>
                                <td><input type="text" name="bans_customreason[]" id="bans_customreason[]"
                                        value="{$creason}"
                                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                                </td>
                            </tr>
                        {/foreach}
                        <tr>
                            <td><input type="text" name="bans_customreason[]" id="bans_customreason[]"
                                    class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                            </td>
                        </tr>
                        <tr>
                            <td><input type="text" name="bans_customreason[]" id="bans_customreason[]"
                                    class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                            </td>
                        </tr>
                    </table>
                    <a href="javascript:void(0)" onclick="MoreFields();" title="Add more fields"
                        class="text-gray-600 dark:text-gray-400">[+]</a>

                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Type the custom banreasons you want to appear in the dropdown menu.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="bans_customreason.msg" class="badentry"></div>
                </span>

                <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Mail Settings</h4>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Email Server</span>
                    <input type="text" TABINDEX=12 id="mail_host" name="mail_host" value="{$config_smtp[0]}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Outgoing SMTP server, hostname or IP address.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="mailhost.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Email User</span>
                    <input type="text" TABINDEX=12 id="mail_user" name="mail_user" value="{$config_smtp[1]}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Username for account allowed to send though SMTP server.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="mail_user.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Email Password</span>
                    <input type="password" TABINDEX=12 id="mail_pass" name="mail_pass" placeholder="***"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Password for account allowed to send though SMTP server.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="mail_pass.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">SMTP Port</span>
                    <input type="number" TABINDEX=12 id="mail_port" name="mail_port" value="{$config_smtp[2]}"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Port used by SMTP server. Common ports include 25, 465, 587, and 2525.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="mail_port.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Cert verify</span>
                    <input type="checkbox" TABINDEX=12 id="mail_verify_peer" name="mail_verify_peer"
                        class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Require verification of SSL certificate used.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="mail_verify_peer.msg" class="badentry"></div>
                </span>

                <span>
                    {sb_button text="Save Changes" id="asettings" submit=true class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}
                </span>

            </div>
        </div>
    </div>

</form>
{* Comment out TinyMCE for now.
<script type="text/javascript" src="./includes/tinymce/tinymce.min.js"></script>
{literal}
<script language="javascript" type="text/javascript">
tinyMCE.init({
selector: "textarea",
height: 500,
theme : "silver",
plugins : "advlist, autolink, lists, link, image, charmap, print, preview, hr, anchor, pagebreak, searchreplace, wordcount, visualblocks, visualchars, code, fullscreen, insertdatetime, media, nonbreaking, save, table, directionality, emoticons, template, paste, textpattern, imagetools, codesample, toc",
extended_valid_elements : "a[name|href|target|title|onclick],img[class|src|border=0|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name],hr[class|width|size|noshade],font[face|size|color|style],span[class|align|style]"
});
</script>
{/literal}
*}
<!-- end admin settings Page -->