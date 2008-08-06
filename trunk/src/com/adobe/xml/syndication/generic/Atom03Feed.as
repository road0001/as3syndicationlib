package com.adobe.xml.syndication.generic
{

	import com.adobe.xml.syndication.atom.Atom03;
	import com.adobe.xml.syndication.atom.Entry03;
	import com.adobe.xml.syndication.atom.FeedData03;

	public class Atom03Feed
		implements IFeed
	{
		private var atom03:Atom03;
		private var _metadata:Atom03Metadata;
		private var _items:Array;

		public function Atom03Feed(atom03:Atom03)
		{
			this.atom03 = atom03;
			this._metadata = new Atom03Metadata(this.atom03.feedData as FeedData03);
			this._items = new Array();
			for each (var item:Entry03 in this.atom03.entries)
			{
				this._items.push(new Atom03Item(item));
			}
		}

		public function get metadata():IMetadata
		{
			return this._metadata;
		}

		public function get items():Array
		{
			return this._items;
		}
	}
}