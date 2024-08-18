<!-- start logs page -->
<h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">System Log</h4>
<p class="mb-4 text-sm text-gray-600 dark:text-gray-300">Click on a row to see more details about the event.</p>

{load_template file="admin.log.search" }

<div
    class="flex items-center justify-between p-4 mb-8 text-sm px-4 py-3 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <div class="flex items-center text-gray-600 dark:text-gray-400">
        <span>
            {$page_numbers}
        </span>
    </div>
    <div class="flex items-center text-gray-600 dark:text-gray-400">
        .
    </div>
</div>

<div id="mainwrapper" class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
    <div class="w-full overflow-x-auto">

        <table class="w-full whitespace-no-wrap">
            <thead>
                <tr
                    class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                    <td class="px-4 py-3"><b>Type</b></td>
                    <td class="px-4 py-3"><b>Event</b></td>
                    <td class="px-4 py-3"><b>User</b></td>
                    <td class="px-4 py-3"><b>Date/Time</b></td>
                </tr>
            </thead>
            <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
                {foreach from=$log_items item="log"}
                    <tr
                        class="opener text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                        <td class="px-4 py-3">{$log.type_img}</td>
                        <td class="px-4 py-3">{$log.title}</td>
                        <td class="px-4 py-3">{$log.user}</td>
                        <td class="px-4 py-3">{$log.date_str}</td>
                    </tr>
                    <tr>
                        <td colspan="7" align="center">
                            <div class="opener">
                                <table class="w-full whitespace-no-wrap">
                                    <tr
                                        class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                        <td height="16" align="left" class="listtable_top" colspan="3">
                                            <b>Event Details</b>
                                        </td>
                                    </tr>
                                    <tr
                                        class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                        <td width="20%" height="16" class="listtable_1">Details</td>
                                        <td height="16" class="listtable_1">{$log.message}</td>
                                    </tr>
                                    <tr
                                        class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                        <td width="20%" height="16" class="listtable_1">Parent Function</td>
                                        <td height="16" class="listtable_1">{$log.function}</td>
                                    </tr>
                                    <tr
                                        class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                        <td width="20%" height="16" class="listtable_1">Query String</td>
                                        <td height="16" class="listtable_1">
                                            {textformat wrap=62 wrap_cut=true}{$log.query}{/textformat}</td>
                                    </tr>
                                    <tr
                                        class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                        <td width="20%" height="16" class="listtable_1">IP</td>
                                        <td height="16" class="listtable_1">{$log.host}</td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
        <div
            class="px-4 py-3 text-xs tracking-wide text-gray-500 border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
            <span>
                {$clear_logs}
            </span>
        </div>
    </div>
</div>

<script type="text/javascript">
    InitAccordion('tr.opener', 'div.opener', 'mainwrapper');
</script>
<!-- end logs page -->