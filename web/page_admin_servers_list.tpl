<div id="admin-page-content">
    <div class="tabcontent" id="List servers">
        {if NOT $permission_list}
            Access Denied
        {else}


            <!-- With actions -->
            <h4
              class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300"
            >
                Servers (<span id="srvcount">{$server_count}</span>)
            </h4>
            <div class="w-full overflow-hidden rounded-lg shadow-xs">
              <div class="w-full overflow-x-auto">

            <table class="w-full whitespace-no-wrap">
                <thead>
                    <tr class="text-sm font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                        <th class="px-4 py-3 text-center">ID</th>
                        <th class="px-4 py-3">Hostname</th>
                        <th class="px-4 py-3">Players</th>
                        <th class="px-4 py-3">Mod</th>
                        <th class="px-4 py-3">Action</th>
                    </tr>
                <thead>

                <tbody
                class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800"
                >
                {foreach from=$server_list item="server"}
                    <script>xajax_ServerHostPlayers({$server.sid});</script>
                    <tr id="sid_{$server.sid}" {if $server.enabled==0}style="background-color:#eaeaea" title="Disabled"{/if} class="text-sm text-gray-700 dark:text-gray-400">
                        <td class="px-4 py-3 text-center">{$server.sid}</td>
                        <td class="px-4 py-3" id="host_{$server.sid}"><i>Querying Server Data...</i></td>
                        <td class="px-4 py-3" id="players_{$server.sid}">N/A</td>
                        <td class="px-4 py-3"><img width="26px" height="26px" src="images/games/{$server.icon}"></td>
                        <td class="px-4 py-3">
                            {if $server.rcon_access}
                                <a class="font-semibold" href="index.php?p=admin&c=servers&o=rcon&id={$server.sid}">RCON</a> -
                            {/if}

                            <a class="font-semibold" href="index.php?p=admin&c=servers&o=admincheck&id={$server.sid}">Admins</a>

                            {if $permission_editserver}
                                - <a class="font-semibold" href="index.php?p=admin&c=servers&o=edit&id={$server.sid}">Edit</a>
                            {/if}

                            {if $pemission_delserver}
                                - <a class="font-semibold" href="#" onclick="RemoveServer({$server.sid}, '{$server.ip}:{$server.port}');">Delete</a>
                            {/if}
                        </td>
                    </tr>

                {/foreach}
            </tbody>
            </table>
            <div
            class="grid px-4 py-3 rounded-b-lg tracking-wide text-gray-500 border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800"
            >
            </div>


            <br><br>

            {if $permission_addserver}
 
              <div
                class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800"
              >
                <p class="text-sm text-gray-600 dark:text-gray-400">
                {sb_button text="Upload Map Image" onclick="childWindow=open('pages/admin.uploadmapimg.php','upload','resizable=yes,width=300,height=130');" class="save" id="upload"}
                </p>
                <div class="text-xs text-gray-600 dark:text-gray-400">
                    Click here to upload a screenshot of a map. Use the mapname as filename.
                </div>
              </div>
              <div id="mapimg.msg" style="color:#CC0000;" class="text-xs text-red-600 dark:text-red-400"></div>
            {/if}
        {/if}
    
        </div>

        </div>
</div>
