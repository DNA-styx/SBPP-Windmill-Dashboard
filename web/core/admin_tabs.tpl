<!-- Start Admin Tabs -->
<!--
<div id="admin-page-menu">
{foreach from=$tabs item="tab"}
    <a onclick="openTab(this, '{$tab.name}');">{$tab.name}</a>
  {/foreach}
  <a href="javascript:history.go(-1);">Back</a>
  </div>

  
  
  <div
  class="flex items-center justify-between p-4 mb-8 text-sm font-semibold text-purple-100 bg-purple-600 rounded-lg shadow-md focus:outline-none focus:shadow-outline-purple"
  id="admin-page-menu"
  >
  <div class="flex items-center">
  {$title} - 
  {foreach from=$tabs item="tab"}
    <a onclick="openTab(this, '{$tab.name}');">{$tab.name}</a> - 
  {/foreach}
  </div>
  </div>
    -->
 

    <div class="inline-flex shadow-sm rounded-md">
    <div class="rounded-l-lg border border-gray-200 bg-white text-sm font-medium px-4 py-2  hover:bg-gray-100 text-blue-700 focus:z-10 focus:ring-2 focus:ring-blue-700 focus:text-blue-700">
    </div>

  {foreach from=$tabs item="tab"}
    <a onclick="openTab(this, '{$tab.name}');" href="#" class="border-t border-b border-gray-200 bg-white text-sm font-medium px-4 py-2 text-gray-900 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-2 focus:ring-blue-700 focus:text-blue-700">

              {$tab.name}
      </a>
  {/foreach}
    <a href="#" class="rounded-r-md border border-gray-200 bg-white text-sm font-medium px-4 py-2 text-gray-900 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-2 focus:ring-blue-700 focus:text-blue-700">
    
    </a>

</div>
  
<br><br><br>

<div id="admin-page-menu" class="inline-flex rounded-md shadow-sm" role="group">
  
    {foreach from=$tabs item="tab"}
        <a onclick="openTab(this, '{$tab.name}');"> 
            <button type="button" class="px-4 py-2 text-sm font-medium text-gray-900 bg-white border border-gray-200 rounded-s-lg hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-2 focus:ring-blue-700 focus:text-blue-700 dark:bg-gray-800 dark:border-gray-700 dark:text-white dark:hover:text-white dark:hover:bg-gray-700 dark:focus:ring-blue-500 dark:focus:text-white">
                {$tab.name}
            </button>
        </a>
    {/foreach}

</div>
<br><br><br>
<ul id="admin-page-menu" class="flex flex-wrap text-sm font-medium text-center text-gray-500 border-b border-gray-200 dark:border-gray-700 dark:text-gray-400">

{foreach from=$tabs item="tab"}

<li class="me-2">
    <a 
        onclick="openTab(this, '{$tab.name}');" 
        aria-current="page" class="inline-block p-4 rounded-t-lg hover:text-gray-600 hover:bg-gray-50 dark:hover:bg-gray-800 dark:hover:text-gray-300"
        >
        {$tab.name}
    </a>
</li>



{/foreach}
 





</ul>
  
  
  <!-- End Admin Tabs -->