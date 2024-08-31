<!-- Start submit ban page -->
<div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">
  <p class="text-gray-600 dark:text-gray-400">
    In order to keep our servers running smoothly, offenders of our rules should be punished and we can't always be on
    call to help.<br>When submitting a player report, we ask you to fill out the report as detailed
    as possible as this will help us process your report quickly.{*<br>If you are unsure on how to record
    evidence within in-game, please  <a class="font-semibold" href="#" @click="openModal">click here</a> for an
    explanation. *}
  </p>
  <br>
  <form action="index.php?p=submit" method="post" enctype="multipart/form-data">
    <input type="hidden" name="subban" value="1">
    <table class="block text-sm">
      <tr>
        <td>
          <span class="text-gray-700 dark:text-gray-400">Player's SteamID:</span>
          <input
            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
            maxlength="64" name="SteamID" value="{$STEAMID}">
        </td>
      </tr>
      <tr>
        <td>
          <span class="text-gray-700 dark:text-gray-400">Player's IP:</span>
          <input
            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
            maxlength="64" name="BanIP" value="{$ban_ip}">
        </td>
      </tr>
      <tr>
        <td>
          <span class="text-gray-700 dark:text-gray-400">Player's Nickname *</span>
          <input
            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
            maxlength="70" name="PlayerName" value="{$player_name}">
        </td>
      </tr>
      <tr>
        <td>
          <span class="text-gray-700 dark:text-gray-400">
            Comments *<br>
            <small>(Please write down a descriptive comment.<br>So NO comments like: "hacking")</small>
          </span>
          <textarea
            class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-textarea focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"
            rows="3" name="BanReason">{$ban_reason}</textarea>
        </td>
      </tr>
      <tr>
        <td>
          <span class="text-gray-700 dark:text-gray-400">Your Name:</span>
          <input
            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
            maxlength="70" name="SubmitName" value="{$subplayer_name}">
        </td>
      </tr>
      <tr>
        <td>
          <span class="text-gray-700 dark:text-gray-400">Your Email *:</span>
          <input
            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
            maxlength="70" name="EmailAddr" value="{$player_email}">
        </td>
      </tr>
      <tr>
        <td>
          <span class="text-gray-700 dark:text-gray-400">Server *:</span>
          <select
            class="block w-full mt-1 text-sm dark:text-gray-300 dark:border-gray-600 dark:bg-gray-700 form-select focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"
            id="server" name="server">
            <option value="-1">-- Select Server --</option>
            {foreach from=$server_list item="server"}
              <option value="{$server.sid}" {if $server_selected == $server.sid}selected{/if}>{$server.hostname}</option>
            {/foreach}
            <option value="0">Other server / Not listed here</option>
          </select>
        </td>
      </tr>
      <tr>
        <td>
          <span class="text-gray-700 dark:text-gray-400">Upload demo:</span>
          <input name="demo_file" type="file"
            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
            style="width: 268px;">
          <p class="text-sm text-gray-600 dark:text-gray-400">
            Note: Only DEM, <a href="http://www.winzip.com" target="_blank">ZIP</a>, <a href="http://www.rarlab.com"
              target="_blank">RAR</a>, <a href="http://www.7-zip.org" target="_blank">7Z</a>, <a
              href="http://www.bzip.org" target="_blank">BZ2</a> or <a href="http://www.gzip.org" target="_blank">GZ</a>
            allowed.
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <span class="text-gray-700 dark:text-gray-400">* = Mandatory Field</span>
          {sb_button text=Submit onclick="" class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id=save submit=true}
        </td>
      </tr>
    </table>
  </form>
  <br>
  <p class="text-gray-600 dark:text-gray-400">
    <b>What happens if someone gets banned?</b><br>
    If someone you reported gets banned, the SteamID or IP will be included onto the ban on the main bans list and
    everytime they try to connect to any server they will be blocked from joining and it will be logged into our
    database.
  </p>
</div>

<!-- end submit ban page -->