<?php
/* Sucuri Security - SiteCheck Malware Scanner
 * Copyright (C) 2010-2012 Sucuri Security - http://sucuri.net
 * Released under the GPL - see LICENSE file for details.
 */


if(!defined('SUCURISCAN'))
{
    return(0);
}

/* Sucuri one-click hardening page. */

function sucuriscan_hardening_lib()
{
    
    sucuriscan_pagestop("Sucuri 1-Click Hardening Options");
    
    echo '</div>';
    
    echo '<div class="postbox-container" style="min-width:400px; max-width:600px; padding: 0 20px 0 0;">';
 
    include_once("lib/hardening.php");

    if(isset($_POST['wpsucuri-doharden']))
    {
        if(!wp_verify_nonce($_POST['sucuriscan_wphardeningnonce'], 'sucuriscan_wphardeningnonce'))
        {
            unset($_POST['wpsucuri-doharden']);
        }
    }

    ?>

        <div id="poststuff">
            <div class="postbox">
                <div class="inside">
                    <h2 align="center">Help secure your WordPress install with <a href="http://sucuri.net/signup">Sucuri</a> 1-Click Hardening Options.</h2>
                </div>
            </div>
    
        <?php 
            
            echo '<form action="" method="post">'.
                     '<input type="hidden" name="sucuriscan_wphardeningnonce" value="'.wp_create_nonce('sucuriscan_wphardeningnonce').'" />'.
                     '<input type="hidden" name="wpsucuri-doharden" value="wpsucuri-doharden" />'.
    
                        sucuriscan_harden_version();
                        sucuri_harden_removegenerator();
                        sucuriscan_harden_upload();
                        sucuriscan_harden_wpcontent();
                        sucuriscan_harden_wpincludes();
                        sucuriscan_harden_phpversion();
                
            ?>

            <p align="center"><strong>If you have any questions about these checks or this plugin, contact us at support@sucuri.net or visit <a href="http://sucuri.net">Sucuri Security</a></strong></p>
    
        </div>       

    <?php
}