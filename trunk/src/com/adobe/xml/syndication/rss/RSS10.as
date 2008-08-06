package com.adobe.xml.syndication.rss
{
	import com.adobe.xml.syndication.Namespaces;
	import com.adobe.xml.syndication.NewsParser;
	import com.adobe.xml.syndication.ParsingTools;

	/**
	 * Class for parsing RSS 1.0 feeds. Note: the RSS10 class cannot be use
	 * to parse RSS versions 0.91, 0.92, or 2.0.  Use the RSS20 class for all
	 * other versions of RSS other than 1.0.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 * 
	 * @see http://web.resource.org/rss/1.0/
	 */	
	public class RSS10
		extends NewsParser
			implements IRSS
	{
		private var _channel:Channel10;
		private var _image:Image10;
		private var _items:Array;
		private var rss:Namespace = Namespaces.RSS_NS;

		/**
		 * Create a new RSS10 instance.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function RSS10()
		{
			super();
		}

		/**
		 * The Channel10 object associated with this feed.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get channel():IChannel
		{
			if (this._channel == null)
			{
				this._channel = new Channel10(this.x.rss::channel);
			}
			return this._channel;
		}

		/**
		 * The Image10 object associated with this feed.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get image():IImage
		{
			if (this._image == null)
			{
				this._image = new Image10(this.x.rss::image);
			}
			return this._image;
		}

		/**
		 * An array of Item10 objects associated with this feed.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get items():Array
		{
			if (ParsingTools.nullCheck(this.x.rss::item) == null)
			{
				return null;
			}

			if (this._items == null)
			{
				this._items = new Array();
				var i:XML;
				for each (i in this.x.rss::item)
				{
					this._items.push(new Item10(XMLList(i)));
				}
			}
			return this._items;
		}
	}
}