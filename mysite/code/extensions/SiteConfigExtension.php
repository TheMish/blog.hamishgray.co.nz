<?php

class SiteConfigExtension extends DataExtension {     

	public static $has_one = array(
		'Logo' => 'Image',
		'LogoReverse' => 'Image'
	);

	public static $db = array(		
		'SiteDescription' => "Text",
        'BrandColor' => 'Varchar(6)',
		
        'Mailto' => 'Varchar(100)',
        'SubmitText' => 'Text',
		
		'Address' => "Varchar(250)",
		'PhoneNumber' => "Varchar(250)",
		'Email' => "Varchar(250)",
	);

    public function updateCMSFields(FieldList $fields) {
    			
		$fields->addFieldToTab("Root.Main", $SiteDescription = new TextareaField("SiteDescription", "Site Description"));
		$SiteDescription->setDescription('One or two sentences to be shown in search results and in the footer.');
		$fields->addFieldToTab("Root.Main", new UploadField("Logo", "Header logo"));
		$fields->addFieldToTab("Root.Main", new UploadField("LogoReverse", "Logo in white"));
		$fields->addFieldToTab("Root.Main", new ColorField("BrandColor", "Brand Color"));
		
		$fields->addFieldToTab("Root.Contact", new TextareaField("Address", "Address"));
		$fields->addFieldToTab("Root.Contact", new TextField("PhoneNumber", "Phone number"));
		$fields->addFieldToTab("Root.Contact", new TextField("Email", "Email"));	
		
		$fields->addFieldToTab("Root.ContactForm", new TextField("Mailto", "Email to send contact form submissions to"));
        $fields->addFieldToTab("Root.ContactForm", new TextareaField('SubmitText', 'Text shown on submission')); 
		
    }
}