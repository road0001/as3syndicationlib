package com.adobe.xml.syndication.generic
{
	/**
	 * Class that represents a generic excerpt or description.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */
	public class Excerpt
	{
		/**
		 * The content type of the excerpt.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public var type:String;

		/**
		 * If the excerpt isn't actually included, the URL pointing to the
		 * excerpt.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public var src:String;

		/**
		 * The actual excerpt itself.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public var value:String;
	}
}