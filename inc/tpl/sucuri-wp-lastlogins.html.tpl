<div class="wrap">
    <h2 id="warnings_hook"></h2>
    <div class="sucuriscan_header"><img src="%%SUCURI.SucuriURL%%/inc/images/logo.png">
        <h2>Sucuri Security WordPress Plugin</h2>
    </div>

    <div class="postbox-container" style="width:75%;">
        <div class="sucuriscan-maincontent">
            <div class="postbox">
               <div class="inside">
                   <h2 align="center">Sucuri Plugin Last-Logins</h2>
               </div>
            </div>

            <div id="poststuff">
                <div class="postbox">
                    <h3>Post-Hack - User logins (latest 10, newest to oldest)</h3>
                    <div class="inside">
                        <table class="wp-list-table widefat">
                            <thead>
                                <tr>
                                    <th class="manage-column column-cb check-column">
                                        <label class="screen-reader-text" for="cb-select-all-1">Select All</label>
                                        <input id="cb-select-all-1" type="checkbox">
                                    </th>
                                    <th class="manage-column">Username</th>
                                    <th class="manage-column">Email</th>
                                    <th class="manage-column">IP Address</th>
                                    <th class="manage-column">Date/Time</th>
                                </tr>
                            </thead>

                            <tbody>
                                %%SUCURI.UserList%%
                            </tbody>
                        </table>

                        <a href="%%SUCURI.CurrentURL%%&limit=0" class="button button-primary lastlogins-showall" style="%%SUCURI.UserList.ShowAll%%">Show all results</a>
                    </div>
                </div>
            </div><!-- End poststuff -->

        </div><!-- End sucuriscan-maincontent -->
    </div><!-- End postbox-container -->

    %%SUCURI.SucuriWPSidebar%%

</div><!-- End wrap -->