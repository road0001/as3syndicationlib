package com.adobe.xml.syndication.generic
{

	import com.adobe.xml.syndication.rss.RSS20;
	import com.adobe.xml.syndication.rss.Channel20;
	import com.adobe.xml.syndication.rss.Image20;

	/**
	 * Class that abstracts out the specific characteristics of an RSS 2.0 feed
	 * into generic metadata. In this case, metadata refers to any data not
	 * contained in an item (in other words, data about the feed itself).
	 * You create an instance using an RSS20 object, then you can access it
	 * in a generic way.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */	
	public class RSS20Metadata
		implements IMetadata
	{
		private var rss20:RSS20;
		private var channel:Channel20;

		/**
		 * Create a new RSS10Metadata instance.
		 *
		 * @param rss20 An RSS20 object.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function RSS20Metadata(rss20:RSS20)
		{
			this.rss20 = rss20;
			this.channel = Channel20(rss20.channel);
		}

		/**
		 * This feed's title.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get title():String
		{
			return this.channel.title;
		}

		/**
		 * An array of authors.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get authors():Array
		{
			var author:Author = new Author();
			author.email = this.channel.managingEditor;
			return [author];
		}

		/**
		 * This feed's link.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get link():String
		{
			return this.channel.link;
		}

		/**
		 * Who ownes the rights to this feed.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get rights():String
		{
			return this.channel.copyright;
		}

		/**
		 * An image associated with this feed.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get image():Image
		{
			var image:Image = new Image();
			var rss20Image:Image20 = Image20(this.rss20.image);
			image.url = rss20Image.url;
			image.title = rss20Image.title;
			image.link = rss20Image.link;
			image.width = rss20Image.width;
			image.height = rss20Image.height;
			image.description = rss20Image.description;
			return image;
		}

		/**
		 * The date this feed was last published.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get date():Date
		{
			return this.channel.pubDate;
		}

		/**
		 * A description of this feed.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get description():String
		{
			return this.channel.description;
		}
	}
}