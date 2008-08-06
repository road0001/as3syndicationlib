package com.adobe.xml.syndication.rss
{
	import com.adobe.utils.DateUtil;
	import com.adobe.xml.syndication.Namespaces;
	import com.adobe.xml.syndication.NewsFeedElement;
	import com.adobe.xml.syndication.ParsingTools;

	/**
	 * Class that represents an RSS 1.0 item.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 * 
	 * @see http://web.resource.org/rss/1.0/spec#s5.5
	 */	
	public class Item10
		extends NewsFeedElement
			implements IItem
	{
		private var rdf:Namespace = Namespaces.RDF_NS;
		private var rss:Namespace = Namespaces.RSS_NS;
		private var dc:Namespace = Namespaces.DC_NS;

		/**
		 * Create a new Item10 instance.
		 * 
		 * @param x The XML with which to construct the item.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function Item10(x:XMLList)
		{
			super(x);
		}

		/**
		 * The URL of the item element's rdf:about attribute must be unique
		 * with respect to any other rdf:about attributes in the RSS document,
		 * and is a URI which identifies the item. The URL should be identical
		 * to the value of the <link>  sub-element of the <item> element, if
		 * possible.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get about():String
		{
			return ParsingTools.nullCheck(this.x.@rdf::about);
		}

		/**
		 * The item's title.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get title():String
		{
			return ParsingTools.nullCheck(this.x.rss::title);
		}

		/**
		 * The item's URL.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get link():String
		{
			return ParsingTools.nullCheck(this.x.rss::link);
		}

		/**
		 * A brief description/abstract of the item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get description():String
		{
			return ParsingTools.nullCheck(this.x.rss::description);
		}

		/**
		 * The name and, optionally, email address of the creator of the feed.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get creators():Array
		{
			if (ParsingTools.nullCheck(this.x.dc::creator) == null) return null;
			var creators:Array = new Array();
			var i:XML;
			for each (i in this.x.dc::creator)
			{
				creators.push(i);
			}
			return creators;
		}

		/**
		 * The organization publishing this item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get publisher():String
		{
			return ParsingTools.nullCheck(this.x.dc::publisher);
		}

		/**
		 * The subject of the item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get subjects():Array
		{
			if (ParsingTools.nullCheck(this.x.dc::subject) == null) return null;
			var subjects:Array = new Array();
			var i:XML;
			for each (i in this.x.dc::subject)
			{
				subjects.push(i);
			}
			return subjects;
		}

		/**
		 * The date this item was published.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get date():Date
		{
			return ParsingTools.dateCheck(this.x.dc::date, DateUtil.parseW3CDTF);
		}

		/**
		 * Who ownes the rights to the content in this item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get rights():String
		{
			return ParsingTools.nullCheck(this.x.dc::rights);
		}
	}
}