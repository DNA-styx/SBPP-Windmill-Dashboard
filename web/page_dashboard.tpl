<!-- Start page_dashboard.tpl -->

<!-- Start Dashboard Text -->
{if $dashboard_text}

<h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">{$dashboard_title}</h4>
<div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
  <div class="w-full overflow-x-auto">
    <table class="w-full">
      <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
        <tr class="text-gray-700 dark:text-gray-400">
          <td class="px-4 py-3">{$dashboard_text}</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
{/if}
<!-- End Dashboard Text -->


<!-- Start Stat Cards -->
<div class="grid gap-6 mb-8 md:grid-cols-2 xl:grid-cols-4">
  <!-- Card -->
  <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
    <div
      class="p-3 mr-4 text-green-500 bg-green-100 flex items-center justify-center rounded-full dark:text-green-100 dark:bg-green-500">
      &nbsp;<i class="fas fa-server"></i>&nbsp;
    </div>
    <div>
      <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">
        Total Servers Protected
      </p>
      <p class="text-lg font-semibold text-gray-700 dark:text-gray-200">
        {count($server_list)}
      </p>
    </div>
  </div>

  <!-- Card -->
  <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
    <div
      class="p-3 mr-4 text-orange-500 bg-orange-100 flex items-center justify-center rounded-full dark:text-orange-100 dark:bg-orange-500">
      &nbsp;<i class="fa fa-ban" aria-hidden="true"></i>&nbsp;
    </div>
    <div>
      <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">
        Total Players Banned
      </p>
      <p class="text-lg font-semibold text-gray-700 dark:text-gray-200">
        {$total_bans}
      </p>
    </div>
  </div>

  <!-- Card -->
  <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
    <div
      class="p-3 mr-4 text-blue-500 bg-blue-100 flex items-center justify-center rounded-full dark:text-blue-100 dark:bg-blue-500">
      &nbsp;<i class="fa fa-microphone-slash" aria-hidden="true"></i>
    </div>
    <div>
      <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">
        Total Comms Blocks
      </p>
      <p class="text-lg font-semibold text-gray-700 dark:text-gray-200">
        {$total_comms}
      </p>
    </div>
  </div>

  <!-- Card -->
  <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
    <div
      class="p-3 mr-4 text-teal-500 bg-teal-100 flex items-center justify-center rounded-full dark:text-teal-100 dark:bg-teal-500">
      &nbsp;<i class="fas fa-hand-paper"></i>&nbsp;
    </div>
    <div>
      <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">
        Banned Players Blocked
      </p>
      <p class="text-lg font-semibold text-gray-700 dark:text-gray-200">
        {$total_blocked}
      </p>
    </div>
  </div>
</div>
<!-- End Stat Cards -->

<!-- Start Servers Table -->
<h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Server List</h4>
<div>
  {include file='page_servers.tpl'}
</div>
<!-- End Servers Table -->

<!-- Start Bans Table -->
<h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Latest Added Bans</h4>
<div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
  <div class="w-full overflow-x-auto">
    <table class="w-full whitespace-no-wrap">
      <thead>
        <tr
          class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
          <th class="px-4 py-3">MOD</th>
          <th class="px-4 py-3">Date/Time</th>
          <th class="px-4 py-3">Name</th>
          <th class="px-4 py-3">Length</th>
        </tr>
      </thead>
      <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">

        {foreach from=$players_banned item=player}
          <tr class="text-gray-700 dark:text-gray-400" id="opener_{$server.sid}" style="cursor:pointer;"
            onclick="{$player.link_url}">
            <td class="px-4 py-3"><img src="images/games/{$player.icon}" width="26" alt="MOD" title="MOD"></td>
            <td class="px-4 py-3 text-sm">{$player.created}</td>
            <td class="px-4 py-3 text-sm">
              {if empty($player.short_name)}
                <i>
                  <font color="#677882">no nickname present</font>
                </i>
              {else}
                {$player.short_name|escape:'html'}
              {/if}
            </td>
            <td class="px-4 py-3 text-sm">{$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}</td>
          </tr>
        {/foreach}

      </tbody>
    </table>
  </div>
</div>
<!-- End Bans Table -->

<!-- Start Comms Table -->
<h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Latest Comms Blocks</h4>
<div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
  <div class="w-full overflow-x-auto">
    <table class="w-full whitespace-no-wrap">
      <thead>
        <tr
          class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
          <th class="px-4 py-3">Type</th>
          <th class="px-4 py-3">Date/Time</th>
          <th class="px-4 py-3">Name</th>
          <th class="px-4 py-3">Length</th>
        </tr>
      </thead>
      <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
        {foreach from=$players_commed item=player}
          <tr class="text-gray-700 dark:text-gray-400" style="cursor: pointer;" onclick="{$player.link_url}">
            <td class="px-4 py-3 "><i class="{$player.type}"></i></td>
            <td class="px-4 py-3 text-sm">{$player.created}</td>
            <td class="px-4 py-3 text-sm">

              {if empty($player.short_name)}
                <i>
                  <font color="#677882">no nickname present</font>
                </i>
              {else}
                {$player.short_name|escape:'html'}
              {/if}


            </td>
            <td class="px-4 py-3 text-sm">{$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}</td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  </div>
</div>
<!-- Start Comms Table -->


<!-- Start Blocked Table -->
<h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Latest Players Blocked</h4>
<div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
  <div class="w-full overflow-x-auto">
    <table class="w-full whitespace-no-wrap">
      <thead>
        <tr
          class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
          <th class="px-4 py-3">&nbsp;</th>
          <th class="px-4 py-3">Date/Time</th>
          <th class="px-4 py-3">Name</th>
        </tr>
      </thead>
      <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
        {foreach from=$players_blocked item=player}
          <tr class="text-gray-700 dark:text-gray-400" style="cursor: pointer;" onclick="{$player.link_url}"
            id="{$player.server}" title="Querying Server Data...">
            <td class="px-4 py-3 "><i class="fas fa-hand-paper"></i></td>
            <td class="px-4 py-3 text-sm">{$player.date}</td>
            <td class="px-4 py-3 text-sm">{$player.short_name|escape:'html'}</td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  </div>
</div>
<!-- End Blocked Table -->
<!-- End page_dashboard.tpl -->