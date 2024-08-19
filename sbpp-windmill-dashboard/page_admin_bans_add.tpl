<!-- Start add ban page -->
{if NOT $permission_addban}
    Access Denied!
{else}
    <div id="msg-green" style="display:none;">
        <i class="fas fa-check fa-2x"></i>
        <b>Ban Added</b><br />
        The new ban has been added to the system.<br /><br />
        <i>Redirecting back to bans page</i>
    </div>

    <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800" id="add-group1">
        <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
            <div class="w-full">

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Nickname</span>
                    <input type="hidden" id="fromsub" value="">
                    <input type="text" TABINDEX=1
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                        id="nickname" name="nickname">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Type the nickname of the person that you are banning.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="nick.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Ban Type</span>
                    <select id="type" name="type" TABINDEX=2
                        class="select block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                        <option value="0">Steam ID</option>
                        <option value="1">IP Address</option>
                    </select>
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Choose whether to ban by Steam ID or IP address.
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Steam ID / Community ID</span>
                    <input type="text" TABINDEX=3 id="steam" name="steam"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    The Steam ID or Community ID of the person to ban.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="steam.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">IP Address</span>
                    <input type="text" TABINDEX=3 id="ip" name="ip"
                        class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Type the IP address of the person you want to ban.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="ip.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Ban Reason</span>
                    <select id="listReason" name="listReason" TABINDEX=4
                        onChange="changeReason(this[this.selectedIndex].value);"
                        class="select block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                        <option value="" selected> -- Select Reason -- </option>
                        <optgroup label="Hacking">
                            <option value="Aimbot">Aimbot</option>
                            <option value="Antirecoil">Antirecoil</option>
                            <option value="Wallhack">Wallhack</option>
                            <option value="Spinhack">Spinhack</option>
                            <option value="Multi-Hack">Multi-Hack</option>
                            <option value="No Smoke">No Smoke</option>
                            <option value="No Flash">No Flash</option>
                        </optgroup>
                        <optgroup label="Behavior">
                            <option value="Team Killing">Team Killing</option>
                            <option value="Team Flashing">Team Flashing</option>
                            <option value="Spamming Mic/Chat">Spamming Mic/Chat</option>
                            <option value="Inappropriate Spray">Inappropriate Spray</option>
                            <option value="Inappropriate Language">Inappropriate Language</option>
                            <option value="Inappropriate Name">Inappropriate Name</option>
                            <option value="Ignoring Admins">Ignoring Admins</option>
                            <option value="Team Stacking">Team Stacking</option>
                        </optgroup>
                        {if $customreason}
                            <optgroup label="Custom">
                                {foreach from=$customreason item="creason"}
                                    <option value="{$creason}">{$creason}</option>
                                {/foreach}
                            </optgroup>
                        {/if}
                        <option value="other">Other Reason</option>
                    </select>
                    <div id="dreason" style="display:none;">
                        <textarea TABINDEX=4 cols="30" rows="5" id="txtReason" name="txtReason"
                            class="textbox block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-textarea focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></textarea>
                    </div>
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Explain in detail, why this ban is being made.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="reason.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Ban Length</span>
                    <select id="banlength" TABINDEX=5
                        class="select select block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                        <option value="0">Permanent</option>
                        <optgroup label="minutes">
                            <option value="1">1 minute</option>
                            <option value="5">5 minutes</option>
                            <option value="10">10 minutes</option>
                            <option value="15">15 minutes</option>
                            <option value="30">30 minutes</option>
                            <option value="45">45 minutes</option>
                        </optgroup>
                        <optgroup label="hours">
                            <option value="60">1 hour</option>
                            <option value="120">2 hours</option>
                            <option value="180">3 hours</option>
                            <option value="240">4 hours</option>
                            <option value="480">8 hours</option>
                            <option value="720">12 hours</option>
                        </optgroup>
                        <optgroup label="days">
                            <option value="1440">1 day</option>
                            <option value="2880">2 days</option>
                            <option value="4320">3 days</option>
                            <option value="5760">4 days</option>
                            <option value="7200">5 days</option>
                            <option value="8640">6 days</option>
                        </optgroup>
                        <optgroup label="weeks">
                            <option value="10080">1 week</option>
                            <option value="20160">2 weeks</option>
                            <option value="30240">3 weeks</option>
                        </optgroup>
                        <optgroup label="months">
                            <option value="43200">1 month</option>
                            <option value="86400">2 months</option>
                            <option value="129600">3 months</option>
                            <option value="259200">6 months</option>
                            <option value="518400">12 months</option>
                        </optgroup>
                    </select>
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Select how long you want to ban this person for.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="length.msg" class="badentry"></div>
                </span>

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Upload Demo</span>
                    {sb_button text="Upload a demo" onclick="childWindow=open('pages/admin.uploaddemo.php','upload','resizable=yes,width=350,height=350');" class="save block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="udemo" submit=false}
                </label>
                <span class="text-xs text-gray-600 dark:text-gray-400">
                    Click here to upload a demo with this ban submission.
                </span>
                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="demo.msg" style="color:#CC0000;"></div>
                </span>

                <span class="flex items-center">
                    {sb_button text="Add Ban" onclick="ProcessBan();" class="ok block px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="aban" submit=false}
                </span>

            </div>
        </div>
    </div>

{/if}
<!-- End add ban page -->