<?php
class Country extends DataObject {

	static $default_sort = 'Sort ASC';
	
	private static $db = array(
		'Title' => 'Text',
		'Sort' => 'Int'
	);
	
	private static $has_one = array(
		'Pattern' => 'Image',
	);
	
	private static $has_many = array(
		'BlogPosts' => 'BlogPost'
	);


	
	function getCMSFields() {
		$fields = new FieldList();
		$fields->push(new Tabset('Root'));
		
		
		
		$fields->addFieldToTab('Root.Main', new TextField('Title', 'Title'));
		
		$fields->addFieldToTab('Root.Main', new UploadField('Pattern', 'Pattern Image'));
		
		
		
		return $fields;
	}
	
    
	
}