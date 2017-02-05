<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	'type' => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 'root',
	"database" => 'hamishgray_blog',
	'path' => ''
);

// Set the site locale
i18n::set_locale('en_US');

Object::add_extension('SiteConfig', 'SiteConfigExtension');
Object::add_extension('BlogPost', 'BlogPostExtension');
