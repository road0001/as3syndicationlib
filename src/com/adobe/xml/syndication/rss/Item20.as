package com.adobe.xml.syndication.rss
{

	import com.adobe.utils.DateUtil;
	import com.adobe.xml.syndication.Namespaces;
	import com.adobe.xml.syndication.NewsFeedElement;
	import com.adobe.xml.syndication.ParsingTools;

	/**
	 * Class that represents an RSS 2.0 item.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 * 
	 * @see http://blogs.law.harvard.edu/tech/rss#hrelementsOfLtitemgt
	 */	
	public class Item20
		extends NewsFeedElement
			implements IItem
	{

		private var dc:Namespace = Namespaces.DC_NS;
		private var content:Namespace = Namespaces.CONTENT;

		/**
		 * Create a new Item20 instance.
		 * 
		 * @param x The XML with which to construct the item.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function Item20(x:XMLList)
		{
			super(x);
		}

		/**
		 * The title of the item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get title():String
		{
			return ParsingTools.nullCheck(this.x.title);
		}

		/**
		 * The URL of the item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get link():String
		{
			return ParsingTools.nullCheck(this.x.link);
		}

		/**
		 * The item synopsis.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get description():String
		{
			return ParsingTools.nullCheck(this.x.description);
		}

		/**
		 * The item content.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get encodedContent():String
		{
			return ParsingTools.nullCheck(this.x.content::encoded);
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
		 * URL of a page for comments relating to the item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 *
		 * @see http://blogs.law.harvard.edu/tech/rss#ltcommentsgtSubelementOfLtitemgt
		 */
		public function get comments():String
		{
			return ParsingTools.nullCheck(this.x["comments"]);
		}

		/**
		 * Email address of the author of the item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 *
		 * @see http://blogs.law.harvard.edu/tech/rss#ltauthorgtSubelementOfLtitemgt
		 */
		public function get author():String
		{
			return ParsingTools.nullCheck(this.x.author);
		}

		/**
		 * Indicates when the item was published.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 *
		 * @see http://blogs.law.harvard.edu/tech/rss#ltpubdategtSubelementOfLtitemgt
		 */
		public function get pubDate():Date
		{
			return ParsingTools.dateCheck(this.x.pubDate, DateUtil.parseRFC822);
		}

		/**
		 * Includes the item in one or more categories.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 *
		 * @see http://blogs.law.harvard.edu/tech/rss#ltcategorygtSubelementOfLtitemgt
		 */
		public function get categories():Array
		{
			if (ParsingTools.nullCheck(this.x.category) == null) return null;
			var categories:Array = new Array();
			var i:XML;
			for each (i in this.x.category)
			{
				categories.push(i);
			}
			return categories;
		}

		/**
		 * The RSS channel that the item came from.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 *
		 * @see http://blogs.law.harvard.edu/tech/rss#ltsourcegtSubelementOfLtitemgt
		 */
		public function get source():Source
		{
			if (ParsingTools.nullCheck(this.x.source) == null)
			{
				return null;
			}
			var source:Source = new Source();
			source.url = String(this.x.source.@url);
			source.name = String(this.x.source);
			return source;
		}

		/**
		 * Describes a media object that is attached to the item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 *
		 * @see http://blogs.law.harvard.edu/tech/rss#ltenclosuregtSubelementOfLtitemgt
		 */
		public function get enclosure():Enclosure
		{
			if (ParsingTools.nullCheck(this.x.enclosure.@url) == null)
			{
				return null;
			}
			var enclosure:Enclosure = new Enclosure();
			enclosure.url = String(this.x.enclosure.@url);
			enclosure.length = uint(this.x.enclosure.@length);
			enclosure.type = String(this.x.enclosure.@type);
			return enclosure;
		}

		/**
		 * A string that uniquely identifies the item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 *
		 * @see http://blogs.law.harvard.edu/tech/rss#ltguidgtSubelementOfLtitemgt
		 */
		public function get guid():Guid
		{
			if (ParsingTools.nullCheck(this.x.guid) == null)
			{
				return null;
			}
			var guid:Guid = new Guid();
			if (ParsingTools.nullCheck(this.x.guid.@isPermaLink) != null)
			{
				guid.permaLink = Boolean(this.x.guid.@isPermaLink);
			}
			guid.id = String(this.x.guid);
			return guid;
		}
	}
}