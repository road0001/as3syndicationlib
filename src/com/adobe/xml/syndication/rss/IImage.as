package com.adobe.xml.syndication.rss
{
	/**
	 * Interface which defines the properties that are common across RSS 1.0
	 * RSS 2.0 images.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */
	public interface IImage
	{
		/**
		 * Describes the image.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get title():String;

		/**
		 * The URL of the site.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get link():String;

		/**
		 * The URL of a GIF, JPEG or PNG image.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get url():String;
	}
}