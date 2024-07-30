{if NOT $permission_listmods}
    Access Denied!
{else}


            <!-- With actions -->
            <h4
              class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300"
            >
                Server Mods ({$mod_count})
            </h4>
            <div class="w-full overflow-hidden rounded-lg shadow-xs">
              <div class="w-full overflow-x-auto">
                <table class="w-full whitespace-no-wrap">
                  <thead>
                    <tr
                      class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
                    >
                      <th class="px-4 py-3">Name</th>
                      <th class="px-4 py-3">Mod Folder</th>
                      <th class="px-4 py-3">Mod icon</th>
                      <th class="px-4 py-3">SU</th>
                      {if $permission_editmods || $permission_deletemods}
                        <th class="px-4 py-3">Actions</th>
                      {/if}
                    </tr>
                  </thead>
                  <tbody
                    class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800"
                  >
                    
                  {foreach from=$mod_list item="mod" name="gaben"}
                  <!-- start row -->
                    <tr id="mid_{$mod.mid}" class="text-gray-700 dark:text-gray-400">
                      <td class="px-4 py-3 text-xs">
                        {$mod.name|smarty_htmlspecialchars}
                      </td>
                      <td class="px-4 py-3 text-sm">
                        {$mod.modfolder|smarty_htmlspecialchars}
                      </td>
                      <td class="px-4 py-3 text-xs">
                        <img src="images/games/{$mod.icon}">  
                      </td>
                      <td class="px-4 py-3 text-sm">
                        {$mod.steam_universe|smarty_htmlspecialchars}
                      </td>
                      
                      {if $permission_editmods || $permission_deletemods}
                      
                      <td class="px-4 py-3">
                        <div class="flex items-center space-x-4 text-sm">
                          
                        {if $permission_editmods}

                            <button
                            class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-purple-600 rounded-lg dark:text-gray-400 focus:outline-none focus:shadow-outline-gray"
                            aria-label="Edit"
                            onclick="location.href='index.php?p=admin&c=mods&o=edit&id={$mod.mid}';"
                          >
                            <svg
                              class="w-5 h-5"
                              aria-hidden="true"
                              fill="currentColor"
                              viewBox="0 0 20 20"
                            >
                              <path
                                d="M13.586 3.586a2 2 0 112.828 2.828l-.793.793-2.828-2.828.793-.793zM11.379 5.793L3 14.172V17h2.828l8.38-8.379-2.83-2.828z"
                              ></path>
                            </svg>
                          </button>
                        
                        {/if}  
                         
                        {if $permission_deletemods}
                          
                          <a href="#" onclick="RemoveMod('{$mod.name|escape:'quotes'|smarty_htmlspecialchars}', '{$mod.mid}');">
                            <button
                                class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-purple-600 rounded-lg dark:text-gray-400 focus:outline-none focus:shadow-outline-gray"
                                aria-label="Delete"
                            >
                                <svg
                                class="w-5 h-5"
                                aria-hidden="true"
                                fill="currentColor"
                                viewBox="0 0 20 20"
                                >
                                <path
                                    fill-rule="evenodd"
                                    d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z"
                                    clip-rule="evenodd"
                                ></path>
                                </svg>
                            </button>
                          </a>
                        
                        {/if}
                        
                        </div>
                      </td>

                    {/if}

                    </tr>
				<!-- end row -->
                {/foreach}
					
					</tbody>
                </table>
              </div>
              <div
                class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800"
              >
              </div>
            </div>



            <br>
            <br>
            <br>

{/if}

<!--



    <h3>Server Mods ({$mod_count})</h3>
    <table width="100%" cellspacing="0" cellpadding="0" align="center" class="listtable">
        <tr>
            <td width="50%" height='16' class="listtable_top"><strong>Name</strong></td>
            <td width="25%" height='16' class="listtable_top"><strong>Mod Folder</strong></td>
            <td width="10%" height='16' class="listtable_top"><strong>Mod icon</strong></td>
            <td width="2%" height='16' class="listtable_top"><strong><span title="SteamID Universe (X of STEAM_X:Y:Z)">SU</span></strong></td>
            {if $permission_editmods || $permission_deletemods}
                <td height='16' class="listtable_top"><strong>Action</strong></td>
            {/if}
        </tr>
        {foreach from=$mod_list item="mod" name="gaben"}
            <tr id="mid_{$mod.mid}">
                <td class="listtable_1" height='16'>{$mod.name|smarty_htmlspecialchars}</td>
                <td class="listtable_1" height='16'>{$mod.modfolder|smarty_htmlspecialchars}</td>
                <td class="listtable_1" height='16'><img src="images/games/{$mod.icon}" width="16"></td>
                <td class="listtable_1" height='16'>{$mod.steam_universe|smarty_htmlspecialchars}</td>
                {if $permission_editmods || $permission_deletemods}
                    <td class="listtable_1" height='16'>
                        {if $permission_editmods}
                            <a href="index.php?p=admin&c=mods&o=edit&id={$mod.mid}">Edit</a> -
                        {/if}
                        {if $permission_deletemods}
                            <a href="#" onclick="RemoveMod('{$mod.name|escape:'quotes'|smarty_htmlspecialchars}', '{$mod.mid}');">Delete</a>
                        {/if}
                    </td>
                {/if}
            </tr>
        {/foreach}
    </table>
-->


