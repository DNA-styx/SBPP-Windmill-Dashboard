<!-- Start title.tpl -->
<!-- start body -->
<main class="h-full overflow-y-auto">
  <div class="container px-6 mx-auto grid">
    <!-- Start title -->
    <div
      class="windmill-title flex items-center justify-between p-4 mt-8 mb-8 text-xl font-semibold rounded-lg shadow-md">
      <div class="flex items-center">{$title}</div>
    </div>
    <!-- End title -->
    {*
<!-- BS++ Default pop-up box -->
<div id="dialog-placement"
style="vertical-align:middle;display:none;opacity:0;text-align:center;width:892px;margin:0 auto;position:fixed !important;position:absolute;overflow:hidden;top:100px;left:100px;">
<table width="460px" id="dialog-holder" class="dialog-holder" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td class="box-content">
<h2 align="left" id="dialog-title" class="ok"></h2>
<div class="dialog-content" align="left">
<div class="dialog-body">
<div class="clearfix">
<div style="float: left; margin-right: 15px;" id="dialog-icon" class="icon-info">&nbsp;</div>
<div style="width:360px;float: right; padding-bottom: 5px; font-size: 11px;"
  id="dialog-content-text"></div>
</div>
</div>
<div class="dialog-control" id="dialog-control">
</div>
</div>
</td>
</tr>
</tbody>
</table>
</div>

<div id="dialog-placement" class="overlay text-gray-600 dark:text-gray-400 bg-gray-50 dark:bg-gray-800">
<div class="popup">
<span
class="flex items-center justify-between p-4 text-xl font-semibold text-purple-100 bg-purple-600 rounded-lg shadow-md focus:outline-none focus:shadow-outline-purple">
<h2 id="dialog-title" class="ok"></h2>
</span>
<div class="content">
<!-- <div class="clearfix"> -->
<span id="dialog-icon" class="icon-info"></span>
<span id="dialog-content-text"></span>
<!-- </div> -->
<span id="dialog-control" class="dialog-control"></span>
</div>
</div>
</div>
*}

    <!-- Modal backdrop  -->
    <div id="dialog-placement" x-transition:enter="transition ease-out duration-150"
      x-transition:enter-start="opacity-0" x-transition:enter-end="opacity-100"
      x-transition:leave="transition ease-in duration-150" x-transition:leave-start="opacity-100"
      x-transition:leave-end="opacity-0"
      class="hidden fixed inset-0 z-30 flex items-end bg-black bg-opacity-50 sm:items-center sm:justify-center">
      <!-- Modal -->
      <div x-transition:enter="transition ease-out duration-150"
        x-transition:enter-start="opacity-0 transform translate-y-1/2" x-transition:enter-end="opacity-100"
        x-transition:leave="transition ease-in duration-150" x-transition:leave-start="opacity-100"
        x-transition:leave-end="opacity-0  transform translate-y-1/2"
        class="w-full px-6 py-4 overflow-hidden bg-white rounded-lg dark:bg-gray-800 sm:rounded-lg sm:m-4 sm:max-w-xl"
        role="dialog" id="modal">
        <!-- Modal body -->
        <div class="mt-4 mb-6">
          <!-- Modal title -->
          <p class="mb-2 text-lg font-semibold text-gray-700 dark:text-gray-300">
            <span id="dialog-title" class="ok"></span>
          </p>
          <span id="dialog-icon" class="icon-info"></span>
          <!-- Modal description -->
          <p class="text-sm text-gray-700 dark:text-gray-400">
            <span id="dialog-content-text"></span>
          </p>
        </div>
        <footer
          class="flex flex-col items-center justify-end px-6 py-3 -mx-6 -mb-4 space-y-4 sm:space-y-0 sm:space-x-6 sm:flex-row bg-gray-50 dark:bg-gray-800">
          <!--
<button @click="closeModal"
class="w-full px-5 py-3 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg sm:w-auto sm:px-4 sm:py-2 active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple">
Close
</button>
-->
          <span id="dialog-control" class="dialog-control"></span>
        </footer>
      </div>
    </div>
    <!-- End of modal backdrop -->

<!-- End title.tpl -->