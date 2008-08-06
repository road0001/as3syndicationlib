package com.adobe.xml.syndication.rss
{
    /**
	 * Interface which defines the properties that are common across RSS 1.0
	 * RSS 2.0 channels.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */
	public interface IChannel
	{
		/**
		 * A descriptive title for the channel.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get title():String;

		/**
		 * The URL to which an HTML rendering of the channel title will link,
		 * commonly the parent site's home or news page.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get link():String;

		/**
		 * A brief description of the channel's content, function, source, etc.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		function get description():String;
	}
}