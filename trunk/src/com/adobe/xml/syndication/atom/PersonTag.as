package com.adobe.xml.syndication.atom
{
	
	/**
	*	Class that represents a person construct within an Atom feed.
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://www.atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.3.2
	*/
	public class PersonTag
	{
		/**
		*	A human-readable name for the person.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var name:String;
		
		/**
		*	An IRI associated with the person.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var uri:String;
		
		/**
		*	An e-mail address associated with the person
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var email:String;
	}
}