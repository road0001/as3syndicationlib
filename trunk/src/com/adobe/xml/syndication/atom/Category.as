package com.adobe.xml.syndication.atom
{
	
	/**
	*	Class that represents category element within an Atom feed.
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://www.atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.4.2.2
	*/		
	public class Category
	{
		
		/**
		*	Identifies the category to which the entry or feed belongs.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var term:String;
		
		/**
		*	An URI that identifies a categorization scheme.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var scheme:String;
		
		/**
		*	A human-readable label for display in end-user applications.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var label:String;
	}
}