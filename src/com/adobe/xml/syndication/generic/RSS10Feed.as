package com.adobe.xml.syndication.generic
{

	import com.adobe.xml.syndication.rss.RSS10;
	import com.adobe.xml.syndication.rss.Item10;

	/**
	 * Class that abstracts out the specific characteristics of an RSS 1.0 feed
	 * into a generic Feed. You create an instance using an RSS10 object,
	 * then you can access it in a generic way.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */	
	public class RSS10Feed
		implements IFeed
	{
		private var rss10:RSS10;
		private var channel:RSS10Metadata;
		private var _items:Array;

		/**
		 * Create a new RSS10Feed instance.
		 *
		 * @param rss10 An RSS10 object that you want abstracted.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function RSS10Feed(rss10:RSS10)
		{
			this.rss10 = rss10;
			this.channel = new RSS10Metadata(this.rss10);
			this._items = new Array();
			for each (var item:Item10 in this.rss10.items)
			{
				this._items.push(new RSS10Item(item));
			}
		}

		/**
 		 * Get the metadata associated with this RSS 1.0 feed. In other words,
 		 * any data that isn't contained in items, meaning data about the feed
 		 * itself.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get metadata():IMetadata
		{
			return this.channel;
		}

		/**
 		 * Get an array of Item objects which represent RSS 1.0 entries.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get items():Array
		{
			return this._items;
		}
	}
}