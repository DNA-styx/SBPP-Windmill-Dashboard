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
                target="_blank">Theme</a> based on <a class="font-semibold"
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
</body>

</html>
<!-- End footer.tpl -->