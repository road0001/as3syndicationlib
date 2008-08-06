package com.adobe.xml.syndication.generic
{

	import com.adobe.xml.syndication.atom.Atom10;
	import com.adobe.xml.syndication.atom.Entry10;
	import com.adobe.xml.syndication.atom.FeedData10;

	/**
	 * Class that abstracts out the specific characteristics of an Atom feed
	 * into a generic Feed. You create an instance using an Atom10 object,
	 * then you can access it in a generic way.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */	
	public class Atom10Feed
		implements IFeed
	{
		private var atom10:Atom10;
		private var _metadata:Atom10Metadata;
		private var _items:Array;

		/**
		 * Create a new Atom10Feed instance.
		 *
		 * @param atom10 An Atom10 object that you want abstracted.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function Atom10Feed(atom10:Atom10)
		{
			this.atom10 = atom10;
			this._metadata = new Atom10Metadata(this.atom10.feedData as FeedData10);
			this._items = new Array();
			for each (var item:Entry10 in this.atom10.entries)
			{
				this._items.push(new Atom10Item(item));
			}
		}

		/**
 		 * Get the metadata associated with this Atom feed. In other words, any
 		 * data that isn't contained in entries, meaning data about the feed
 		 * itself.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get metadata():IMetadata
		{
			return this._metadata;
		}

		/**
 		 * Get an array of Item objects which represent Atom 1.0 entries.
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