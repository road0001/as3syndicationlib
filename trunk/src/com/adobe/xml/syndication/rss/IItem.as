package com.adobe.xml.syndication.rss
{
	/**
	 * Interface which defines the properties that are common across RSS 1.0
	 * RSS 2.0 items.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */
	public interface IItem
	{
		/**
		 * The item's title.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get title():String;

		/**
		 * The item's URL.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get link():String;

		/**
		 * A brief description/abstract of the item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get description():String;

		/**
		 * The name and, optionally, email address of the creator of the feed.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get creators():Array;
	}
}