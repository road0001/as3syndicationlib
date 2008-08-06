package com.adobe.xml.syndication.rss
{
	import com.adobe.xml.syndication.Namespaces;
	import com.adobe.xml.syndication.NewsFeedElement;
	import com.adobe.xml.syndication.ParsingTools;

	/**
	 * Class that represents an RSS 1.0 image.
	 *
	 * An image to be associated with an HTML rendering of the channel. This
	 * image should be of a format supported by the majority of Web browsers.
	 * While the later 0.91 specification allowed for a width of 1-144 and
	 * height of 1-400, convention (and the 0.9 specification) dictate 88x31.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 * 
	 * @see http://web.resource.org/rss/1.0/spec#s5.4
	 */	
	public class Image10
		extends NewsFeedElement
			implements IImage
	{
		private var rss:Namespace = Namespaces.RSS_NS;
		private var rdf:Namespace = Namespaces.RDF_NS;

		/**
		 * Create a new Image10 instance.
		 * 
		 * @param x The XML with which to construct the image.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function Image10(x:XMLList)
		{
			super(x);
		}

		/**
		 * URL to the image. If present, must also be present in channel
		 * element.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get about():String
		{
			return ParsingTools.nullCheck(this.x.@rdf::about);
		}

		/**
		 * The alternative text ("alt" attribute) associated with the channel's
		 * image tag when rendered as HTML.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get title():String
		{
			return ParsingTools.nullCheck(this.x.rss::title);
		}

		/**
		 * The URL to which an HTML rendering of the channel image will link.
		 * This, as with the channel's title link, is commonly the parent site's home or news page.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get link():String
		{
			return ParsingTools.nullCheck(this.x.rss::link);
		}

		/**
		 * The URL of the image to used in the "src" attribute of the channel's
		 * image tag when rendered as HTML.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get url():String
		{
			return ParsingTools.nullCheck(this.x.rss::url);
		}
	}
}