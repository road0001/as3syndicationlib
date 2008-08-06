package com.adobe.xml.syndication.generic
{
	/**
	 * This error indicates that the type and/or version of the feed could not
	 * be determined.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */
	public class UnknownFeedError
		extends Error
	{
		public function UnknownFeedError(message:String)
		{
			super(message);
		}
	}
}