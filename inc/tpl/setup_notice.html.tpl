
<div class="updated sucuriscan-setup-notice sucuriscan-clearfix">
    <a href="http://sucuri.net/" target="_blank" class="sucuriscan-column-left sucuriscan-setup-image">
        <img src="%%SUCURI.SucuriURL%%/inc/images/logo.png" alt="Sucuri Scanner" />
    </a>

    <div class="sucuriscan-column-left">
        <p>
            Site not fully activated yet. Please generate the free API<br>
            to enable audit logging, integrity checking and email alerts.
        </p>
    </div>

    <div class="sucuriscan-column-right sucuriscan-setup-form">
        <form action="%%SUCURI.URL.Settings%%" method="post">
            <input type="hidden" name="sucuriscan_page_nonce" value="%%SUCURI.PageNonce%%" />
            <button type="submit" name="sucuriscan_wordpress_apikey" class="button button-primary button-hero">
                <span class="sucuriscan-button-title">Generate API key</span>
                <span class="sucuriscan-button-subtitle">for <b>%%SUCURI.CleanDomain%%</b> / <b>%%SUCURI.AdminEmail%%</b></span>
            </button>
        </form>
    </div>
</div>