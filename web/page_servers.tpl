            <!-- Start server.tpl -->

<!-- Added to enable default accordion -->
<div id="mainwrapper">



            <!-- With avatar -->
            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
              <div class="w-full overflow-x-auto">
                <table class="w-full whitespace-no-wrap" >
                  <thead>
                    <tr
                      class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
                      >
                      <th class="px-4 py-3">MOD</th>
                      <th class="px-4 py-3">OS</th>
                      <th class="px-4 py-3">VAC</th>
                      <th class="px-4 py-3">Hostname</th>
                      <th class="px-4 py-3">Players</th>
                      <th class="px-4 py-3">Map</th>
                      <th class="px-4 py-3">&nbsp;</th>
                    </tr>
                  </thead>
                  <tbody
                    class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800"
                  >

                  {foreach from=$server_list item=server}
                    <tr class="text-gray-700 dark:text-gray-400 opener" id="opener_{$server.sid}" style="cursor:pointer;"{if !$IN_SERVERS_PAGE} onclick="{$server.evOnClick}"{/if}>
                        <td class="px-4 py-3"><img height="26px" width="26px" src="images/games/{$server.icon}"></td>
                        <td class="px-4 py-3 text-sm" id="os_{$server.sid}"></td>
                        <td class="px-4 py-3 text-sm" id="vac_{$server.sid}"></td>
                        <td class="px-4 py-3 text-sm" id="host_{$server.sid}"><i>Querying Server Data...</i></td>
                        <td class="px-4 py-3 text-sm" id="players_{$server.sid}">N/A</td>
                        <td class="px-4 py-3 text-sm" id="map_{$server.sid}">N/A</td>
                        <td class="px-4 py-3 text-sm">
                            <a href="steam://connect/{$server.ip}:{$server.port}">
                            <button
                            class="px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
                            >
                            Connect</button></a>
                        </td>
                    </tr>

                    {if $IN_SERVERS_PAGE}
                    <tr
                    xclass="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
                    >
                      <td colspan="7">
                      <div class="opener">    
                            <div
                            class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800"
                            >
                            <p class="text-sm text-gray-600 dark:text-gray-400">

                                <div id="serverwindow_{$server.sid}">
                                    <div id="sinfo_{$server.sid}">
                                        <table class="w-full whitespace-no-wrap">
                                            <tr>
                                                <td class="">
                                                    <table class="w-full whitespace-no-wrap" id="playerlist_{$server.sid}" name="playerlist_{$server.sid}">
                                                    </table>
                                                </td>
                                                <td width="355px" class="" valign="top" style="padding-right: 0px; padding-left: 13px; padding-top: 12px;">
                                                    <img id="mapimg_{$server.sid}" style="border-radius: 6px; padding-left: 1px;" width='340' src='images/maps/nomap.jpg'>
                                                    <br><br>IP Address: {$server.ip}:{$server.port}<br>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="noplayer_{$server.sid}" name="noplayer_{$server.sid}" style="display:none;"><br>
                                        <h2 style="color: #333;">No players in the server</h2><br>
                                    </div>
                                </div>

                            </p>
                            </div>

                        <!-- Close opener div -->
                        </div> 

                        </td>
                        </tr>
   
                    {/if}

                {/foreach}


                    </tbody>
                </table>
                </div>
            </div>

<!-- end mainwrapper div -->
</div>

{literal}
    <script type="text/javascript">window.addEvent('domready', function(){
            InitAccordion('tr.opener', 'div.opener', 'mainwrapper');
            {/literal}
            {if $view_bans}
            $('tickswitch').value=0;
            {/if}
            {literal}
        });
    </script>
{/literal}

            <!-- End server.tpl -->
