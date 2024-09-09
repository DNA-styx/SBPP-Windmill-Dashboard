<!-- Start bans email page -->
<div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800" id="add-group1">
  <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
    <div class="w-full">

      <label class="block text-sm">
        <span class="text-gray-700 dark:text-gray-400">Email Player</span>
        <input disabled value="{$email_addr}" type="text" TABINDEX=1 id="subject" name="subject"
          class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
      </label>
      <span class="text-xs text-gray-600 dark:text-gray-400">
        This is the email address of the Player
      </span>

      <label class="block text-sm">
        <span class="text-gray-700 dark:text-gray-400">Subject</span>
        <input type="text" TABINDEX=1 id="subject" name="subject"
          class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
      </label>
      <span class="text-xs text-gray-600 dark:text-gray-400">
        Type the subject of the email.
      </span>
      <div class="text-xs text-red-600 dark:text-red-400">
        <span id="subject.msg" class="badentry"></span>
      </div>

      <label class="block text-sm">
        <span class="text-gray-700 dark:text-gray-400">Message</span>
        <textarea TABINDEX=2 cols="35" rows="7" id="message" name="message"
          class="textbox block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"></textarea>
      </label>
      <span class="text-xs text-gray-600 dark:text-gray-400">
        Type your message here.
      </span>
      <div class="text-xs text-red-600 dark:text-red-400">
        <span id="message.msg" class="badentry"></span>
      </div>

      <span class="flex items-center">
        {sb_button text="Send Email" onclick="$email_js" id="aemail" submit=false class="ok block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}
        &nbsp;
        {sb_button text="Back" onclick="history.go(-1)" id="back" submit=false class="cancel block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"}
      </span>

    </div>
  </div>
</div>
<!-- End bans email page -->