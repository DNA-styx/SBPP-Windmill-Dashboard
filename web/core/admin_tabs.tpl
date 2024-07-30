<!--
<div id="admin-page-menu">
    {foreach from=$tabs item="tab"}
        <a onclick="openTab(this, '{$tab.name}');">{$tab.name}</a>
    {/foreach}
    <a href="javascript:history.go(-1);">Back</a>
</div>
-->




<div id="admin-page-menu">
{foreach from=$tabs item="tab"}
<a onclick="openTab(this, '{$tab.name}');">
<button
class="px-5 py-3 font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
>
{$tab.name}
</button>
</a>
{/foreach}
<a href="javascript:history.go(-1);">
<button
class="px-5 py-3 font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
>
Back
</button>
</a>
</div>
