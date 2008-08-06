package com.adobe.xml.syndication.rss
{
	import com.adobe.xml.syndication.NewsFeedElement;
	import com.adobe.xml.syndication.ParsingTools;

	/**
	 * Class that represents an RSS 1.0 image.
	 *
	 * Specifies a GIF, JPEG or PNG image that can be displayed with the
	 * channel.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 * 
	 * @see http://blogs.law.harvard.edu/tech/rss
	 */	
	public class Image20
		extends NewsFeedElement
			implements IImage
	{
		/**
		 * Creates a new Image20 instance.
		 * 
		 * @param x The XML with which to construct the image.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function Image20(x:XMLList)
		{
			super(x);
		}

		/**
		 * Describes the image, it's used in the ALT attribute of the HTML
		 * <img> tag when the channel is rendered in HTML. 
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get title():String
		{
			return ParsingTools.nullCheck(this.x.title);
		}

		/**
		 * The URL of the site. When the channel is rendered, the image is a
		 * link to the site. (Note: in practice the image <title> and <link>
		 * should have the same value as the channel's <title> and <link>).
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get link():String
		{
			return ParsingTools.nullCheck(this.x.link);
		}

		/**
		 * The URL of a GIF, JPEG or PNG image that represents the channel.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get url():String
		{
			return ParsingTools.nullCheck(this.x.url);
		}

		/**
		 * Number indicating the width of the image in pixels. The maximum
		 * value for width is 144. The default value (if undefined) is 88.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get width():Number
		{
			return ParsingTools.nanCheck(this.x.width);
		}

		/**
		 * Number indicating the height of the image in pixels. The maximum
		 * value for height is 400. The default value (if undefined) is 31.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get height():Number
		{
			return ParsingTools.nanCheck(this.x.height);
		}

		/**
		 * Contains text that is included in the TITLE attribute of the link
		 * formed around the image in the HTML rendering.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get description():String
		{
			return ParsingTools.nullCheck(this.x.description);
		}
	}
}