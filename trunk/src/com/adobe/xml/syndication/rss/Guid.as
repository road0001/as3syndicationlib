package com.adobe.xml.syndication.rss
{
	/**
	*	Class that represents an RSS 2.0 GUID
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://blogs.law.harvard.edu/tech/rss#ltguidgtSubelementOfLtitemgt	
	*/	
	public class Guid
	{
		/**
		*	Specifies whether the GUID / id is also a permanent URL to the item
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public var permaLink:Boolean;
		
		/**
		*	A String that uniquely identifies the item.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public var id:String;
	}
}
