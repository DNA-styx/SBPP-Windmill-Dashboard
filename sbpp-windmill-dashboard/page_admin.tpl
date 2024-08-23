<!-- Start admin page -->
<h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">
    Please select an option to administer
</h4>
<div class="grid gap-6 mb-8 md:grid-cols-2 xl:grid-cols-4">
    {if $access_admins}
        <!-- Settings Card -->
        <a href="index.php?p=admin&amp;c=admins">
            <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                <div
                    class="p-3 mr-4 text-teal-500 bg-teal-100 flex items-center justify-center rounded-full dark:text-teal-100 dark:bg-teal-500">
                    <i class="fa fa-user" aria-hidden="true"></i>
                </div>
                <div>
                    <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">Admin Settings</p>
                </div>
            </div>
        </a>
    {/if}
    {if $access_servers}
        <!-- Servers Card -->
        <a href="index.php?p=admin&amp;c=servers">
            <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                <div
                    class="p-3 mr-4 text-green-500 bg-green-100 flex items-center justify-center rounded-full dark:text-green-100 dark:bg-green-500">
                    <i class="fa fa-server" aria-hidden="true"></i>
                </div>
                <div>
                    <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">Server Settings</p>
                </div>
            </div>
        </a>
    {/if}
    {if $access_bans}
        <!-- Bans Card -->
        <a href="index.php?p=admin&amp;c=bans">
            <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                <div
                    class="p-3 mr-4 text-red-700 bg-red-100 flex items-center justify-center rounded-full dark:text-red-100 dark:bg-red-700">
                    <i class="fa fa-ban" aria-hidden="true"></i>
                </div>
                <div>
                    <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">Bans</p>
                </div>
            </div>
        </a>
        <!-- Comms Card -->
        <a href="index.php?p=admin&amp;c=comms">
            <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                <div
                    class="p-3 mr-4 text-blue-500 bg-blue-100 flex items-center justify-center rounded-full dark:text-blue-100 dark:bg-blue-500">
                    <i class="fa fa-microphone-slash" aria-hidden="true"></i>
                </div>
                <div>
                    <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">Comms</p>
                </div>
            </div>
        </a>
    {/if}
    {if $access_groups}
        <!-- Card -->
        <a href="index.php?p=admin&amp;c=groups">
            <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                <div
                    class="p-3 mr-4 text-orange-500 bg-orange-100 flex items-center justify-center rounded-full dark:text-orange-100 dark:bg-orange-500">
                    <i class="fa fa-users" aria-hidden="true"></i>
                </div>
                <div>
                    <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">Group Settings</p>
                </div>
            </div>
        </a>
    {/if}
    {if $access_settings}
        <!-- Card -->
        <a href="index.php?p=admin&amp;c=settings">
            <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                <div
                    class="p-3 mr-4 text-blue-500 bg-blue-100 flex items-center justify-center rounded-full dark:text-blue-100 dark:bg-blue-500">
                    <i class="fa fa-cogs" aria-hidden="true"></i>
                </div>
                <div>
                    <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">Webpanel Settings</p>
                </div>
            </div>
        </a>
    {/if}
    {if $access_mods}
        <!-- Mods Card -->
        <a href="index.php?p=admin&amp;c=mods">
            <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                <div
                    class="p-3 mr-4 text-blue-500 bg-blue-100 flex items-center justify-center rounded-full dark:text-blue-100 dark:bg-blue-500">
                    <i class="fa fa-cubes" aria-hidden="true"></i>
                </div>
                <div>
                    <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">Manage Mods</p>
                </div>
            </div>
        </a>
    {/if}
</div>
<div class="grid gap-6 mb-8 md:grid-cols-2 xl:grid-cols-4">
    <div class="w-1/3 p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
        <h4 class="mb-4 font-semibold text-gray-600 dark:text-gray-300">Servers</h4>
        <p class="text-gray-600 dark:text-gray-400">
            Total Servers: {$total_servers}<br>
            Total Admins: {$total_admins}<br>
            Total Demo Size: {$demosize}<br>
            Web server time: {$smarty.now|date_format:'%d-%b %H:%M'}
        </p>
    </div>
    <div class="w-1/3  p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
        <h4 class="mb-4 font-semibold text-gray-600 dark:text-gray-300">Bans</h4>
        <p class="text-gray-600 dark:text-gray-400">
            Total Player bans: {$total_bans}<br>
            Total Comms Mute/Gags: {$total_comms}<br>
            Banned Player Blocked: {$total_blocks}
        </p>
    </div>
    <div class="w-1/3  p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
        <h4 class="mb-4 font-semibold text-gray-600 dark:text-gray-300">Submissions</h4>
        <p class="text-gray-600 dark:text-gray-400">
            New Ban Appeals: {$total_protests}<br>
            Archived Appeals: {$archived_protests}<br>
            New Player Reports: {$total_submissions}<br>
            Archived Player Reports: {$archived_submissions}
        </p>
    </div>
    <div class="w-1/3  p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
        <h4 class="mb-4 font-semibold text-gray-600 dark:text-gray-300">Software Versions</h4>
        <p class="text-gray-600 dark:text-gray-400">
            Latest SB++ release: <span id='relver'>Please Wait...</span><br>
            {if $dev}
                Latest Dev Git: <span id='svnrev'>Please Wait...</span><br>
            {/if}
            <span id='versionmsg'>Please Wait...</span><br>
            <a href="https://www.smarty.net/" target=_blank class="font-semibold">Smarty: v{$smarty.version}</a><br>
            Current theme:
            {include file='\assets\theme_version.txt' assign=theme_version}{$theme_version|regex_replace:'/[\s*]/':''}
        </p>
    </div>
</div>
<script type="text/javascript">
    xajax_CheckVersion();
</script>
<!-- Start admin page -->