package com.adobe.xml.syndication.atom
{
	import com.adobe.utils.DateUtil;
	import com.adobe.xml.syndication.Namespaces;
	import com.adobe.xml.syndication.NewsParser;
	import com.adobe.xml.syndication.ParsingTools;
	
	/**
	*	Class that represents an Atom .3 XML document.
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://www.atomenabled.org/developers/syndication/atom-format-spec.php
	*/	
	public class Atom03
		extends NewsParser
		implements IAtom
	{
		private var atom:Namespace = Namespaces.ATOM_03_NS;
		private var _feedData:FeedData03;
		private var _entries:Array;

		public function Atom03()
		{
			super();
		}

		public function get feedData():IFeedData
		{
			if (this._feedData == null)
			{
				this._feedData = new FeedData03(XMLList(this.x));
			}
			return this._feedData;
		}

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
					this._entries.push(new Entry03(XMLList(i)));
				}
			}
			return this._entries;
		}
	}
}