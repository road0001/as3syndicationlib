package com.adobe.xml.syndication.rss
{
	/**
	 * Interface which defines the properties that are common across RSS 1.0
	 * and 2.0.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */
	public interface IRSS
	{
		/**
		 * The Channel object associated with this feed.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get channel():IChannel;

		/**
		 * The Image object associated with this feed.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get image():IImage;

		/**
		 * An array of Item objects associated with this feed.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get items():Array;
	}
}