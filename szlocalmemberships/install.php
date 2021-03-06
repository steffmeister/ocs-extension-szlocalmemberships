<?php

/**
 * This function is called on installation and is used to create database schema for the plugin
 */
function extension_install_szlocalmemberships()
{
    $commonObject = new ExtensionCommon;

    $commonObject -> sqlQuery("CREATE TABLE IF NOT EXISTS `szlocalmemberships` (
                              `ID` INT(11) NOT NULL AUTO_INCREMENT,
                              `HARDWARE_ID` INT(11) NOT NULL,
                              `SZGROUP` VARCHAR(255) DEFAULT NULL,
                              `SZUSER` VARCHAR(255) DEFAULT NULL,
                              PRIMARY KEY  (`ID`,`HARDWARE_ID`)
                            ) ENGINE=INNODB ;");
}

/**
 * This function is called on removal and is used to destroy database schema for the plugin
 */
function extension_delete_szlocalmemberships()
{
    $commonObject = new ExtensionCommon;
    $commonObject -> sqlQuery("DROP TABLE IF EXISTS `szlocalmemberships`");
}

/**
 * This function is called on plugin upgrade
 */
function extension_upgrade_szlocalmemberships()
{

}

function extension_hook_szlocalmemberships()
{}
