package com.adobe.xml.syndication.generic
{
	/**
	 * Class that represents external media (like an MP3) associated with a
	 * feed item.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */
	public class Media
	{
		/**
		 * The content type of the media.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public var type:String;

		/**
		 * A URL pointing to the media file.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public var url:String;

		/**
		 * The size of the media file in bytes.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public var length:Number;
	}
}