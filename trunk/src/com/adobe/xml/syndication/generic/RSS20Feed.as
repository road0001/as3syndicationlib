package com.adobe.xml.syndication.generic
{

	import com.adobe.xml.syndication.rss.RSS20;
	import com.adobe.xml.syndication.rss.Item20;

	/**
	 * Class that abstracts out the specific characteristics of an RSS 2.0 feed
	 * into a generic Feed. You create an instance using an RSS20 object,
	 * then you can access it in a generic way.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */	
	public class RSS20Feed
		implements IFeed
	{
		private var rss20:RSS20;
		private var channel:RSS20Metadata;
		private var _items:Array;

		/**
		 * Create a new RSS20Feed instance.
		 *
		 * @param rss20 An RSS20 object that you want abstracted.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function RSS20Feed(rss20:RSS20)
		{
			this.rss20 = rss20;
			this.channel = new RSS20Metadata(this.rss20);
			this._items = new Array();
			for each (var item:Item20 in this.rss20.items)
			{
				this._items.push(new RSS20Item(item));
			}
		}

		/**
 		 * Get the metadata associated with this RSS 2.0 feed. In other words,
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
 		 * Get an array of Item objects which represent RSS 2.0 entries.
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