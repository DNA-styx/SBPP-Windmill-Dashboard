<!-- start list mods page -->
{if NOT $permission_listmods}
  Access Denied!
{else}
  <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
    <div class="w-full overflow-x-auto">
      <table class="w-full whitespace-no-wrap">
        <thead>
          <tr
            class="text-sm font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
            <th class="px-4 py-3">Name</th>
            <th class="px-4 py-3">Mod Folder</th>
            <th class="px-4 py-3">Mod icon</th>
            <th class="px-4 py-3">SU</th>
            {if $permission_editmods || $permission_deletemods}
              <th class="px-4 py-3">Actions</th>
            {/if}
          </tr>
        </thead>
        <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
          {foreach from=$mod_list item="mod" name="gaben"}
            <!-- start row -->
            <tr id="mid_{$mod.mid}" class="text-gray-700 dark:text-gray-400">
              <td class="px-4 py-3 text-sm">{$mod.name|smarty_htmlspecialchars}</td>
              <td class="px-4 py-3 text-sm">{$mod.modfolder|smarty_htmlspecialchars}</td>
              <td class="px-4 py-3"><img src="images/games/{$mod.icon}"></td>
              <td class="px-4 py-3 text-sm">{$mod.steam_universe|smarty_htmlspecialchars}</td>
              {if $permission_editmods || $permission_deletemods}
                <td class="px-4 py-3">
                  <div class="flex items-center space-x-4 text-s">{if $permission_editmods}<button
                        class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-purple-600 rounded-lg dark:text-gray-400 focus:outline-none focus:shadow-outline-gray"
                        aria-label="Edit" onclick="location.href='index.php?p=admin&c=mods&o=edit&id={$mod.mid}';">
                        <i class="fas fa-pencil-alt"></i>
                      </button>
                    {/if}
                    {if $permission_deletemods}
                      <a href="#" onclick="RemoveMod('{$mod.name|escape:'quotes'|smarty_htmlspecialchars}', '{$mod.mid}');">
                        <button
                          class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-purple-600 rounded-lg dark:text-gray-400 focus:outline-none focus:shadow-outline-gray"
                          aria-label="Delete">
                          <i class="fas fa-trash-alt"></i>
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
      class="grid px-4 py-3 tracking-wide border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:bg-gray-800">
    </div>
  </div>
{/if}
<!-- End list mods page -->