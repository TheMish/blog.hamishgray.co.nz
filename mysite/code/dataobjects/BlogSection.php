<?php
class BlogSection extends DataObject {

	static $default_sort = 'Sort ASC';
	
	private static $db = array(
		'Title' => 'Text',
		'Content' => 'HTMLText',
		'ImageLayout' => 'Text',
		'Sort' => 'Int'
	);
	
	private static $has_one = array(
		'MainImage' => 'Image',
		'Parent' => 'BlogPost'
	);
	
	private static $many_many = array(
		'SectionImages' => 'Image'
	);
	
	private static $many_many_extraFields = array(
        'SectionImages' => array('SortOrder' => 'Int')
    );
    
    
    
    public static $summary_fields = array( 
		'Title' => 'Title',
		'Content.FirstSentence' => 'Content', 
		'MainImageThumb' => 'Main Image', 
		'SectionImagesThumb' => 'Section Images',
		'ImageLayout' => 'Image Layout', 
	);


	
	function getCMSFields() {
		$fields = new FieldList();
		$fields->push(new Tabset('Root'));
		
		
		
		$fields->addFieldToTab('Root.Main', new TextField('Title', 'Title'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content', 'Content'));
		
		
		
		$fields->addFieldToTab('Root.Images', new DropdownField('ImageLayout', 'Image Layout', 
			array(
				'FixedWidth' => 'Fixed Width',
				'FullWidth' => 'Full Width'
			)
		));
		
		$fields->addFieldToTab('Root.Images', new UploadField('MainImage', 'Main Image'));
		$fields->addFieldToTab('Root.Images', new SortableUploadField('SectionImages', 'Image Gallery (2 across)'));
		
		
		
		return $fields;
	}
	
	
	
	function MainImageThumb(){ 
		$image = $this->MainImage();
		return ($image && $image->exists()) ? $image->CMSThumbnail() : 'No image added yet';
	}
	
	function SectionImagesThumb(){ 
	
		$image = $this->SectionImages()->First();
		return ($image && $image->exists()) ? $image->CMSThumbnail() : 'No image added yet';

	}
	
	
	
	public function SortedSectionImages(){
        return $this->SectionImages()->Sort('SortOrder');
    }
    
    
	
}