package com.adobe.xml.syndication.rss
{
	import com.adobe.xml.syndication.NewsParser;
	import com.adobe.xml.syndication.ParsingTools;

	/**
	 * Class for parsing RSS 1.0 feeds. Note: the RSS20 class can be used
	 * to parse RSS versions 0.91, 0.92, and 2.0. It cannot be used to parse
	 * RSS 1.0. Use the RSS10 class instead.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 * 
	 * @see http://web.resource.org/rss/1.0/
	 */	
	public class RSS20
		extends NewsParser
			implements IRSS
	{
		private var _channel:Channel20;
		private var _image:Image20;
		private var _items:Array;

		/**
		 * Create a new RSS20 instance.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function RSS20()
		{
			super();
		}

		/**
		 * The Channel20 object associated with this feed.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get channel():IChannel
		{
			if (this._channel == null)
			{
				this._channel = new Channel20(this.x.channel);
			}
			return this._channel;
		}

		/**
		 * The Image20 object associated with this feed.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get image():IImage
		{
			if (ParsingTools.nullCheck(this.x.channel.image) == null)
			{
				return null;
			}

			if (this._image == null)
			{
				this._image = new Image20(this.x.channel.image);
			}

			return this._image;
		}

		/**
		 * An array of Item20 objects associated with this feed.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get items():Array
		{
			if (ParsingTools.nullCheck(this.x.channel.item) == null)
			{
				return null;
			}

			if (this._items == null)
			{
				this._items = new Array();
				var i:XML;
				for each (i in this.x.channel.item)
				{
					this._items.push(new Item20(XMLList(i)));
				}
			}
			return this._items;
		}
	}
}