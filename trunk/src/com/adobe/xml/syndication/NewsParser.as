package com.adobe.xml.syndication
{
	/**
	 * The parent class of all the RSS and Atom parsers. Provides functions for
	 * setting and parsing XML.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */	
	public class NewsParser
	{
		protected var x:XML;

		/**
		 * Parses the specified feed into an XML object, and populates the
		 * subclassing parser.
		 * 
		 * @param xmlStr A string of XML that is an RSS or an Atom feed.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function parse(xmlStr:String):void
		{
			this.populate(new XML(xmlStr));
		}

		/**
		 * Populates the subclassing parser.
		 * 
		 * @param newXml An XML object that represents an RSS or an Atom feed.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function populate(newXml:XML):void
		{
			this.x = newXml;
		}
	}
}