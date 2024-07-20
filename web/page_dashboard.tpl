{if $dashboard_text}
 
    <table class="w-full" >
    <thead>
      <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
        <th class="px-4 py-3">{$dashboard_title}</th>
      </tr>
    </thead>
    <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
          <tr class="text-gray-700 dark:text-gray-400">
              <td class="px-4 py-3">{$dashboard_text}</td>
          </tr>
    </tbody>
    </table>
    <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
    </div>
{/if}


            <!-- Responsive cards -->
            <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">&nbsp;</h4>
            <div class="grid gap-6 mb-8 md:grid-cols-2 xl:grid-cols-4">
              <!-- Card -->
              <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                <div class="p-3 mr-4 text-green-500 bg-green-100 rounded-full dark:text-green-100 dark:bg-green-500">
                    &nbsp;<i class="fa-solid fa-server"></i>&nbsp;
                </div>
                <div>
                  <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">
                    Total Servers Protected
                  </p>
                  <p class="text-lg font-semibold text-gray-700 dark:text-gray-200">
                    1
                  </p>
                </div>
              </div>

              <!-- Card -->
              <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                <div class="p-3 mr-4 text-orange-500 bg-orange-100 rounded-full dark:text-orange-100 dark:bg-orange-500">
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
                <div class="p-3 mr-4 text-blue-500 bg-blue-100 rounded-full dark:text-blue-100 dark:bg-blue-500">
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
                <div class="p-3 mr-4 text-teal-500 bg-teal-100 rounded-full dark:text-teal-100 dark:bg-teal-500">
                    &nbsp;<i class="fa-regular fa-hand"></i>&nbsp;
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


<h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Server List</h4>

<div>
    {include file='page_servers.tpl'}
</div>

<h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Latest Added Bans</h4>
<div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
<div class="w-full overflow-x-auto">
  <table class="w-full whitespace-no-wrap" >
    <thead>
      <tr
        class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
        >
        <th class="px-4 py-3">MOD</th>
        <th class="px-4 py-3">Date/Time</th>
        <th class="px-4 py-3">Name</th>
        <th class="px-4 py-3">Length</th>
      </tr>
    </thead>
    <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">

        {foreach from=$players_banned item=player}
        <tr class="text-gray-700 dark:text-gray-400" id="opener_{$server.sid}" style="cursor:pointer;" onclick="{$player.link_url}">
            <td class="px-4 py-3"><img src="images/games/{$player.icon}" width="26" alt="MOD" title="MOD"></td>
            <td class="px-4 py-3 text-sm">{$player.created}</td>
            <td class="px-4 py-3 text-sm">
                {if empty($player.short_name)}
                    <i><font color="#677882">no nickname present</font></i>
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

<div
class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800"
>
</div>

</div>


<h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Latest Comms Blocks</h4>
	<div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
		<div class="w-full overflow-x-auto">
		  <table class="w-full whitespace-no-wrap" >
			<thead>
			  <tr
				class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
				>
				<th class="px-4 py-3">Type</th>
				<th class="px-4 py-3">Date/Time</th>
				<th class="px-4 py-3">Name</th>
				<th class="px-4 py-3">Length</th>
			  </tr>
			</thead>
			<tbody
			  class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800"
			>
			{foreach from=$players_commed item=player}
			  <tr class="text-gray-700 dark:text-gray-400" style="cursor: pointer;" onclick="{$player.link_url}">
				  <td class="px-4 py-3 "><i class="{$player.type}"></i></td>
				  <td class="px-4 py-3 text-sm">{$player.created}</td>
				  <td class="px-4 py-3 text-sm">
				  
				  {if empty($player.short_name)}
					<i><font color="#677882">no nickname present</font></i>
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

		<div
		class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800"
		>
		</div>
	</div>



  <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">Latest Players Blocked</h4>
	<div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
		<div class="w-full overflow-x-auto">
		  <table class="w-full whitespace-no-wrap" >
			<thead>
			  <tr
				class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
				>
				<th class="px-4 py-3">&nbsp;</th>
				<th class="px-4 py-3">Date/Time</th>
				<th class="px-4 py-3">Name</th>
			  </tr>
			</thead>
			<tbody
			  class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800"
			>
            {foreach from=$players_blocked item=player}
			  <tr class="text-gray-700 dark:text-gray-400" style="cursor: pointer;" onclick="{$player.link_url}" id="{$player.server}" title="Querying Server Data...">
				  <td class="px-4 py-3 "><i class="fas fa-ban fa-lg"></i></td>
				  <td class="px-4 py-3 text-sm">{$player.date}</td>
				  <td class="px-4 py-3 text-sm">{$player.short_name|escape:'html'}</td>
			  </tr>
			{/foreach}
			</tbody>
		  </table>
		</div>

		<div
		class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800"
		>
		</div>
	</div>





<!--

<div class="front-module" style="width:100%">
    <table width="100%" cellpadding="1" class="listtable">
        <tr>
            <td colspan="4">
                <table width="100%" cellpadding="0" cellspacing="0" class="front-module-header">
                    <tr>
                        <td align="left">
                            Latest Added Bans
                        </td>
                        <td align="right">
                            Total bans: {$total_bans}
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr height="16">
            <td width="16" class="listtable_top">MOD</td>
            <td width="24%" class="listtable_top" align="center"><strong>Date/Time</strong></td>
            <td class="listtable_top"><strong>Name</strong></td>
            <td width="14%" class="listtable_top"><strong>Length</strong></td>
        </tr>
        {foreach from=$players_banned item=player}
            <tr onclick="{$player.link_url}" onmouseout="this.className='tbl_out'" onmouseover="this.className='tbl_hover'" style="cursor:pointer;" height="16">
                <td class="listtable_1" align="center"><img src="images/games/{$player.icon}" width="16" alt="MOD" title="MOD" /></td>
                <td class="listtable_1" align="center">{$player.created}</td>
                <td class="listtable_1">
                    {if empty($player.short_name)}
                        <i><font color="#677882">no nickname present</font></i>
                    {else}
                        {$player.short_name|escape:'html'}
                    {/if}
                </td>
                <td class="listtable_1{if $player.unbanned}_unbanned{elseif $player.perm}_permanent{elseif $player.temp}_banned{/if}">{$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}</td>
            </tr>
        {/foreach}
    </table>
</div>
<br /><br /><br />
<div class="front-module dashboard-ban-blocks">
    <table width="100%" cellpadding="1" class="listtable">
        <tr>
            <td colspan="3">
                <table width="100%" cellpadding="0" cellspacing="0" class="front-module-header">
                    <tr>
                        <td align="left">
                            Latest Players Blocked
                        </td>
                        <td align="right">
                            Total Stopped: {$total_blocked}
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="16px" height="16" class="listtable_top">&nbsp;</td>
            <td height="25%" class="listtable_top dashboard-ban-block-date"><b>Date/Time</b></td>
            <td height="16" class="listtable_top"><b>Name</b></td>
        </tr>
        {foreach from=$players_blocked item=player}
            <tr{if $dashboard_lognopopup} onclick="{$player.link_url}"{else} onclick="{$player.popup}"{/if} onmouseout="this.className='tbl_out'" onmouseover="this.className='tbl_hover'" style="cursor: pointer;" id="{$player.server}" title="Querying Server Data...">
                <td width="16" height="16" align="center" class="listtable_1"><i class="fas fa-ban fa-lg"></i></td>
                <td width="25%" height="16" class="listtable_1">{$player.date}</td>
                <td height="16" class="listtable_1">{$player.short_name|escape:'html'}</td>
            </tr>
        {/foreach}
    </table>
</div>

<div class="dashboard-blocks-separate">
    <br /><br /><br />
</div>

<div class="front-module dashboard-comm-blocks">
    <table width="100%" cellpadding="1" class="listtable">
        <tr>
            <td colspan="4">
                <table width="100%" cellpadding="0" cellspacing="0" class="front-module-header">
                    <tr>
                        <td align="left">
                            Latest Comm Blocks
                        </td>
                        <td align="right">
                            Total blocks: {$total_comms}
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr height="16">
            <td width="16" class="listtable_top">Type</td>
            <td width="24%" class="listtable_top" align="center"><strong>Date/Time</strong></td>
            <td class="listtable_top"><strong>Name</strong></td>
            <td width="23%" class="listtable_top"><strong>Length</strong></td>
        </tr>
        {foreach from=$players_commed item=player}
            <tr onclick="{$player.link_url}" onmouseout="this.className='tbl_out'" onmouseover="this.className='tbl_hover'" style="cursor:pointer;" height="16">
                <td class="listtable_1" align="center"><i class="{$player.type}"></i></td>
                <td class="listtable_1">{$player.created}</td>
                <td class="listtable_1">
                    {if empty($player.short_name)}
                        <i><font color="#677882">no nickname present</font></i>
                    {else}
                        {$player.short_name|escape:'html'}
                    {/if}
                </td>
                <td class="listtable_1{if $player.unbanned}_unbanned{elseif $player.perm}_permanent{elseif $player.temp}_banned{/if}">{$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}</td>
            </tr>
        {/foreach}
    </table>
</div>
--> 