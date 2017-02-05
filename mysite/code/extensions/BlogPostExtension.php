<?php

class BlogPostExtension extends DataExtension {     

	public static $has_one = array(
		'ThumbnailImage' => 'Image',
		'Country' => 'Country'
	);

	public static $many_many = array(
	);

	public static $db = array(
		'DoubleHeight' => 'Boolean',
		'City' => 'Text',
		'DateVisited' => 'Date'
	);

    public function updateCMSFields(FieldList $fields) {
		
		$fields->removeFieldFromTab("Root.Main", "FeaturedImage");
		$fields->removeFieldFromTab("Root.Main", "Metadata");
    	$fields->removeFieldFromTab("Root.Main", "CustomSummary");
    			
		
		$fields->addFieldToTab("Root.Main", new UploadField("ThumbnailImage", "Thumbnail Image"));
		$fields->addFieldToTab("Root.Main", new CheckboxField("DoubleHeight", "Tall Thumbnail"));
		
		$fields->addFieldToTab("Root.Banner", new HTMLEditorField("Content", "Introduction"));
		
		
		
		$fields->addFieldToTab("Root.Details", $dateVisited = new DateField("DateVisited", "Date Visited"));
		$dateVisited->setConfig('showcalendar', true);
		
		$countries = Country::get()->map();
		$fields->addFieldToTab("Root.Details", new DropdownField("CountryID", "Country", $countries));
		
		$fields->addFieldToTab("Root.Details", new TextField("City", "City"));
		
		
		
    }
    
}