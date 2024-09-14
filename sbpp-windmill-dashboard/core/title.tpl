<!-- Start title.tpl -->
<!-- start body -->
<main class="h-full overflow-y-auto">
  <div class="container px-6 mx-auto grid">
    <!-- Start title -->
    <div
      class="windmill-title-bar flex items-center justify-between p-4 mt-8 mb-8 text-xl font-semibold rounded-lg shadow-md">
      <div class="flex items-center">{$title}</div>
    </div>
    <!-- End title -->
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
          <span id="dialog-control" class="dialog-control"></span>
        </footer>
      </div>
    </div>
    <!-- End of modal backdrop -->
<!-- End title.tpl -->