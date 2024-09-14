<!-- Start Admin Tabs -->

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