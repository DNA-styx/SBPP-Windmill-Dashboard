<!-- Start footer.tpl -->
<br>
<!-- Start footer bar -->

<div
    class="flex items-center justify-between p-4 mb-8 text-sm px-4 py-3 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <div class="flex items-center text-gray-600 dark:text-gray-400">
        <span>
            <a class="font-semibold" href="https://sbpp.github.io/" target="_blank">SourceBans++</a> {$version}{$git}
            Powered by <a class="font-semibold" href="https://www.sourcemod.net" target="_blank">SourceMod</a>
        </span>
    </div>
    <div class="flex items-center text-gray-600 dark:text-gray-400">
        <span>
            <a class="font-semibold" href="https://github.com/DNA-styx/sbpp-windmill-dashboard"
                target="_blank">Theme ({include file='\assets\theme_version.txt' assign=theme_version}{$theme_version|regex_replace:'/[\s*]/':''})</a> based on <a class="font-semibold"
                href="https://github.com/estevanmaito/windmill-dashboard" target="_blank">Windmill</a> with code from <a
                class="font-semibold" href="https://sbpp.github.io/" target="_blank">SourceBans++</a> & <a
                class="font-semibold" href="https://github.com/Rushaway/sourcebans-web-theme-fluent"
                target="_blank">Rushaway</a>
        </span>
    </div>
</div>

<!-- end footer bar -->

<!-- remove one div -->
</div>
</main>
</div>
</div>
<script>
    {$query}

    {literal}
        window.addEvent('domready', function() {

            ProcessAdminTabs();

            var Tips2 = new Tips($('.tip'), {
                initialize: function() {
                    this.fx = new Fx.Style(this.toolTip, 'opacity', {duration: 300, wait: false}).set(0);
                },
                onShow: function(toolTip) {
                    this.fx.start(1);
                },
                onHide: function(toolTip) {
                    this.fx.start(0);
                }
            });
            var Tips4 = new Tips($('.perm'), {
                className: 'perm'
            });
        });
    {/literal}
</script>

<!-- Modal backdrop. This what you want to place close to the closing body tag -->
<div x-show="isModalOpen" x-transition:enter="transition ease-out duration-150" x-transition:enter-start="opacity-0"
  x-transition:enter-end="opacity-100" x-transition:leave="transition ease-in duration-150"
  x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"
  class="fixed inset-0 z-30 flex items-end bg-black bg-opacity-50 sm:items-center sm:justify-center">
  <!-- Modal -->
  <div x-show="isModalOpen" x-transition:enter="transition ease-out duration-150"
    x-transition:enter-start="opacity-0 transform translate-y-1/2" x-transition:enter-end="opacity-100"
    x-transition:leave="transition ease-in duration-150" x-transition:leave-start="opacity-100"
    x-transition:leave-end="opacity-0  transform translate-y-1/2" @click.away="closeModal" @keydown.escape="closeModal"
    class="w-full px-6 py-4 overflow-hidden bg-white rounded-t-lg dark:bg-gray-800 sm:rounded-lg sm:m-4 sm:max-w-xl"
    role="dialog" id="modal">
    <!-- Remove header if you don't want a close icon. Use modal body to place modal tile. -->
    <header class="flex justify-end">
      <button
        class="inline-flex items-center justify-center w-6 h-6 text-gray-400 transition-colors duration-150 rounded dark:hover:text-gray-200 hover: hover:text-gray-700"
        aria-label="close" @click="closeModal">
        <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20" role="img" aria-hidden="true">
          <path
            d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
            clip-rule="evenodd" fill-rule="evenodd"></path>
        </svg>
      </button>
    </header>
    <!-- Modal body -->
    <div class="mt-4 mb-6">
      <!-- Modal title -->
      <p class="mb-2 text-lg font-semibold text-gray-700 dark:text-gray-300">
        How To Record Evidence
      </p>
      <!-- Modal description -->
      <p class="text-sm text-gray-700 dark:text-gray-400">
        The best way to record evidence on someone breaking the rules would be to use Shadow Play or Plays.TV.
        Both pieces of software will record your game 24/7 with little to no impact on your game and you simply
        press a keybind to record the last X amount of minutes of gameplay which is perfect for catching rule breakers.
        <br><br>
        Alternatively, you can use the old method of using demos. While you are spectating the offending player,
        press the ` key on your keyboard to show the Developers Console. If this does not show, you will need to go into
        your Game Settings and enable this. Then type `record [demoname]` and hit enter, the file will then be in your
        mod folder of your game directory.
      </p>
    </div>
    <footer
      class="flex flex-col items-center justify-end px-6 py-3 -mx-6 -mb-4 space-y-4 sm:space-y-0 sm:space-x-6 sm:flex-row bg-gray-50 dark:bg-gray-800">
      <button @click="closeModal"
        class="w-full px-5 py-3 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg sm:w-auto sm:px-4 sm:py-2 active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple">
        Close
      </button>
    </footer>
  </div>
</div>
<!-- End of modal backdrop -->

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
    <!-- BS++ Default pop-up box -->



</body>

</html>
<!-- End footer.tpl -->