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
	public class Content extends TextTag
	{
		
		/**
		*	An IRI reference to the content the the Content represents.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var src:String;
	}
}