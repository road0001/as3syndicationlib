package com.adobe.xml.syndication.atom
{
	import com.adobe.utils.DateUtil;
	import com.adobe.xml.syndication.Namespaces;
	import com.adobe.xml.syndication.NewsParser;
	import com.adobe.xml.syndication.ParsingTools;
	
	/**
	*	Class that represents an Atom 1.0 XML document.
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://www.atomenabled.org/developers/syndication/atom-format-spec.php
	*/	
	public class Atom10
		extends NewsParser
		implements IAtom
	{
		private var atom:Namespace = Namespaces.ATOM_NS;
		private var _feedData:FeedData10;
		private var _entries:Array;

		/**
		*	Constructor for class.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public function Atom10()
		{
			super();
		}

		/**
		*	The FeedData object associated with the feed. 
		*
		*	This contains metadata and other data associated with the feed.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public function get feedData():IFeedData
		{
			if (this._feedData == null)
			{
				this._feedData = new FeedData10(XMLList(this.x));
			}
			return this._feedData;
		}

		/**
		*	An Array of Entry classes that represent all of the entry elements within
		*	the feed.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public function get entries():Array
		{
			if (ParsingTools.nullCheck(this.x.atom::entry) == null)
			{
				return null;
			}

			if (this._entries == null)
			{
				this._entries = new Array();
				var i:XML;
				for each (i in this.x.atom::entry)
				{
					this._entries.push(new Entry10(XMLList(i)));
				}
			}
			return this._entries;
		}
	}
}