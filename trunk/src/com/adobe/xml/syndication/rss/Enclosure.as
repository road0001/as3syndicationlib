package com.adobe.xml.syndication.rss
{
	
	/**
	*	Class that represents an RSS 2.0 Enclosure element.
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://blogs.law.harvard.edu/tech/rss#ltenclosuregtSubelementOfLtitemgt	
	*/	
	public class Enclosure
	{
		
		/**
		*	The URL pointing to the file that the enclosure represents.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public var url:String;
		
		/**
		*	The file size of the media that the enclosure represents.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public var length:Number;
		
		/**
		*	The MIME type of the media that the enclosure represents.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public var type:String;
	}
}
