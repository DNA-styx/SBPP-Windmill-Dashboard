<!-- Start Admin Tabs -->
{*
<!--
<div id="admin-page-menu">
{foreach from=$tabs item="tab"}
    <a onclick="openTab(this, '{$tab.name}');">{$tab.name}</a>
  {/foreach}
  <a href="javascript:history.go(-1);">Back</a>
  </div>


<br><br><br>

<ul id="admin-page-menu"
  class="flex flex-wrap text-sm font-medium text-center text-gray-500 border-b border-gray-200 dark:border-gray-700 dark:text-gray-400">
  {foreach from=$tabs item="tab"}
    <li>
      <a onclick="openTab(this, '{$tab.name}');" aria-current="page"
        class="inline-block p-4 rounded-t-lg">
        {$tab.name}
      </a>
    </li>
  {/foreach}
</ul>

<br><br><br>
-->
*}
<!-- Credit: https://codepen.io/ekscentrysytet/pen/QbNdEB -->
<div id="admin-page-menu" class="tabinator">
  {counter assign=i start=0}
  {foreach from=$tabs item="tab"}
    {counter}
    <input type="radio" id="tab{$i}" name="tabs" aria-current="page" onclick="openTab(this, '{$tab.name}');" {if $i==1}
      checked{/if}>
    <label for="tab{$i}">{$tab.name}</label>
  {/foreach}
</div>

<!-- End Admin Tabs -->