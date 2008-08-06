package com.adobe.xml.syndication.generic
{
	/**
	 * Interface that defines the properties which are common across RSS 1.0,
	 * RSS 2.0, and Atom feeds.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */	
	public interface IFeed
	{
		/**
 		 * Get the metadata associated with this feed. In other words, any
 		 * data that isn't contained in entries or items, meaning data about
 		 * the feed itself.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get metadata():IMetadata;

		/**
 		 * Get an array of Item objects which represent Atom entries or RSS
 		 * items.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get items():Array;
	}
}