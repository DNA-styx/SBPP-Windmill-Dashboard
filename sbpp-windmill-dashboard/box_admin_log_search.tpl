<!-- Start log search -->
<div id="mainwrapper" class="flex items-center justify-center p-4 mb-8 text-sm px-4 py-3 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <table>
        <tr class="sea_open">
            <td class="font-semibold text-center text-gray-700 dark:text-gray-400">Advanced Search (Click)
            </td>
        </tr>
        <tr>
            <td>
                <div class="panel">
                    <table width="100%" cellpadding="0" class="listtable" cellspacing="0">
                        <tr>
                            <td class="listtable_1" width="8%" align="center"><input id="admin_" name="search_type" type="radio" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400" width="26%">Admin</td>
                            <td class="listtable_1" width="66%">
                                <select id="admin" onmouseup="$('admin_').checked = true" class="select block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                    {foreach from=$admin_list item="admin"}
                                    <option label="{$admin.user}" value="{$admin.aid}">{$admin.user}</option>
                                    {/foreach}
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="listtable_1" align="center"><input id="message_" name="search_type" type="radio" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Message</td>
                            <td class="listtable_1"><input type="text" id="message" value="" onmouseup="$('message_').checked = true" class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"></td>
                        </tr>
                        <tr>
                            <td align="center" class="listtable_1" ><input id="date_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Date</td>
                            <td class="flex items-center">
                                <input type="text" id="day" value="DD" onmouseup="$('date_').checked = true" maxlength="2" style="width: 18px;" class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"> .
                                <input type="text" id="month" value="MM" onmouseup="$('date_').checked = true" maxlength="2" style="width: 18px;" class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"> .
                                <input type="text" id="year" value="YYYY" onmouseup="$('date_').checked = true" maxlength="4" style="width: 30px;" class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                                &nbsp;<input type="text" id="fhour" value="00" onmouseup="$('date_').checked = true" maxlength="2" style="width: 16px;" class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"> :
                                <input type="text" id="fminute" value="00" onmouseup="$('date_').checked = true" maxlength="2" style="width: 16px;" class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                                -&nbsp;<input type="text" id="thour" value="23" onmouseup="$('date_').checked = true" maxlength="2" style="width: 16px;" class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"> :
                                <input type="text" id="tminute" value="59" onmouseup="$('date_').checked = true" maxlength="2" style="width: 16px;" class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="listtable_1" ><input id="type_" type="radio" name="search_type" value="radiobutton" class="text-purple-600 form-radio focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"></td>
                            <td class="text-gray-700 dark:text-gray-400">Type</td>
                            <td class="listtable_1" >
                                <select id="type" onmouseup="$('type_').checked = true" class="select block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray">
                                    <option label="Message" value="m">Message</option>
                                    <option label="Warning" value="w">Warning</option>
                                    <option label="Error" value="e">Error</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">{sb_button text="Search" onclick="search_log();" class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="searchbtn" submit=false}</td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</div>
<script>InitAccordion('tr.sea_open', 'div.panel', 'mainwrapper');</script>
<!-- end log search -->