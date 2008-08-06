package com.adobe.xml.syndication.rss
{
	
	/**
	*	Class that represents an RSS 2.0 source element.
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://blogs.law.harvard.edu/tech/rss#ltsourcegtSubelementOfLtitemgt
	*/	
	public class Source
	{
		/**
		*	A URL pointing to an XML file containing information about the source
		*	of the item.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var url:String;
		
		/**
		*	A human readable name for the source.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var name:String;
	}
}
