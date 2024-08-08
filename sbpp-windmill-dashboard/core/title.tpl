<!-- Start title.tpl -->
<!-- start body -->
<main class="h-full overflow-y-auto">
  <div class="container px-6 mx-auto grid">
  <br>
    <!-- Start title -->
    <div
      class="flex items-center justify-between p-4 mb-8 text-xl font-semibold text-purple-100 bg-purple-600 rounded-lg shadow-md focus:outline-none focus:shadow-outline-purple">
      <div class="flex items-center">
        {$title}
      </div>
    </div>
    <!-- End title -->

    <!-- Default pop-up box -->
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

<!-- End title.tpl -->