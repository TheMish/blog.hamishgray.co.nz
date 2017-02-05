<?php

class CountryAdmin extends ModelAdmin {

	private static $managed_models = array(
		'Country' => array(
			'title' => 'Countries'
		)
	);
	private static $url_segment = 'countries';
	private static $menu_title = 'Countries';
	private static $menu_icon = 'mysite/images/countries-icon.png';


}