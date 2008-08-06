package com.adobe.xml.syndication.generic
{
	/**
	 * Interface that defines the characteristics common across Atom and RSS
	 * metadata. Metadata is defined as data relating to the feed itself as
	 * opposed to the feed's entries or items.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */	
	public interface IMetadata
	{
		/**
		 * The feed's title.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get title():String;

		/**
		 * An array of authors.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get authors():Array;

		/**
		 * The feed's link.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get link():String;

		/**
		 * Who ownes the rights to the feed.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get rights():String;

		/**
		 * An image associated with the feed.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get image():Image;

		/**
		 * The date the feed was last published.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get date():Date;

		/**
		 * A description of the feed.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get description():String;
	}
}