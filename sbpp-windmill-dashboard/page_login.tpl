<!-- Start log in Page -->
<div class="px-4 py-3 mb-2 bg-white rounded-lg shadow-md dark:bg-gray-800">
    <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
        <div class="w-full">

            -{if $steamlogin_show == 1}-

                <label class="block text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Username</span>
                    <input id="loginUsername"
                        class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
                </label>

                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="loginUsername.msg" class="badentry"></div>
                </span>

                <label class="block mt-4 text-sm">
                    <span class="text-gray-700 dark:text-gray-400">Password</span>
                    <input id="loginPassword"
                        class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                        type="password">
                </label>

                <span class="text-xs text-red-600 dark:text-red-400">
                    <div id="loginPassword.msg" class="badentry"></div>
                </span>

                <span class="mt-4">
                    <a class="text-sm font-medium text-purple-600 dark:text-purple-400 hover:underline"
                        href="index.php?p=lostpassword">
                        Forgot your password?
                    </a>
                </span>

                <div class="flex mt-6 text-sm">
                    <label class="flex items-center dark:text-gray-400">
                        <input type="checkbox"
                            class="text-purple-600 form-checkbox focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:focus:shadow-outline-gray"
                            id="loginRememberMe" value="checked" name="remember">
                        <span class="ml-2">Remember me</span>
                    </label>
                </div>

            -{/if}-

            -{if $steamlogin_show == 1}-
                -{sb_button text="Login" onclick=$redir class="block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple" id="alogin" submit=false}-
            -{/if}-

            <div class="mt-6 flex items-center justify-center">
                <a href="index.php?p=login&o=steam"><img src="images/steamlogin.png"></a>
            </div>

        </div>
    </div>
</div>

<script>
    $E('html').onkeydown = function(event) {
        var event = new Event(event);
        if (event.key == 'enter' ) -{$redir}-
    };
    $('loginRememberMeDiv').onkeydown = function(event) {
        var event = new Event(event);
        if (event.key == 'space') $('loginRememberMeDiv').checked = true;
    };
    $('button').onkeydown = function(event) {
        var event = new Event(event);
        if (event.key == 'space' ) -{$redir}-
    };
</script>
<!-- End log in Page -->