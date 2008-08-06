package com.adobe.xml.syndication.generic
{

	import com.adobe.xml.syndication.rss.RSS10;
	import com.adobe.xml.syndication.rss.Channel10;

	/**
	 * Class that abstracts out the specific characteristics of an RSS 1.0 feed
	 * into generic metadata. In this case, metadata refers to any data not
	 * contained in an item (in other words, data about the feed itself).
	 * You create an instance using an RSS10 object, then you can access it
	 * in a generic way.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */	
	public class RSS10Metadata
		implements IMetadata
	{
		private var rss10:RSS10;
		private var channel:Channel10;

		/**
		 * Create a new RSS10Metadata instance.
		 *
		 * @param rss10 An RSS10 object.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function RSS10Metadata(rss10:RSS10)
		{
			this.rss10 = rss10;
			this.channel = Channel10(rss10.channel);
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
			author.name = this.channel.creator;
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
			return this.channel.rights;
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
			image.url = this.rss10.image.url;
			image.title = this.rss10.image.title;
			image.link = this.rss10.image.link;
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
			return this.channel.date;
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