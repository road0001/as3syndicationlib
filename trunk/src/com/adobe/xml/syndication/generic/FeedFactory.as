package com.adobe.xml.syndication.generic
{

	import com.adobe.xml.syndication.atom.Atom10;
	import com.adobe.xml.syndication.atom.Atom03;
	import com.adobe.xml.syndication.rss.RSS10;
	import com.adobe.xml.syndication.rss.RSS20;

	/**
	 * The FeedFactory allows you to create generic IFeed objects from any
	 * version of RSS or Atom. You can then access data within the feed
	 * without knowing what type of feed or which version it is. For most
	 * people, this will be the starting point for the XML syndication
	 * project.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */
	public class FeedFactory
	{
		/**
		 * Allows you to get a generic IFeed object from a string of XML. The
		 * string can be any version of RSS or Atom.
		 *
		 * @param xmlStr A string of XML that is any type of RSS or Atom.
		 * @return A generic IFeed object that lets you access data in the
		 *         feed without having to know what kind of feed it is.
		 * @throws UnknownFeedError If it can't determine what kind of feed
		 *         you passed in.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public static function getFeedByString(xmlStr:String):IFeed
		{
			return FeedFactory.getFeedByXML(new XML(xmlStr));
		}

		/**
		 * Allows you to get a generic IFeed object from an XML object. The
		 * XML can represent any version of RSS or Atom.
		 *
		 * @param x An XML object that represents any type of RSS or Atom.
		 * @return A generic IFeed object that lets you access data in the
		 *         feed without having to know what kind of feed it is.
		 * @throws UnknownFeedError If it can't determine what kind of feed
		 *         you passed in.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public static function getFeedByXML(x:XML):IFeed
		{
			// Atom 0.3
			if (x.namespace().uri.toLowerCase() == "http://purl.org/atom/ns#")
			{
				var atom03:Atom03 = new Atom03();
				atom03.populate(x);
				return new Atom03Feed(atom03);
			}

			// Atom 1.0
			if (x.namespace().uri.toLowerCase() == "http://www.w3.org/2005/atom")
			{
				var atom10:Atom10 = new Atom10();
				atom10.populate(x);
				return new Atom10Feed(atom10);
			}

			// RSS 1.0
			var namespaces:Array = x.namespaceDeclarations();
			for (var i:uint = 0; i < namespaces.length; ++i)
			{
				if (namespaces[i].uri.toLowerCase() == "http://purl.org/rss/1.0/")
				{
					var rss10:RSS10 = new RSS10();
					rss10.populate(x);
					return new RSS10Feed(rss10);
				}
			}

			// RSS .91, .92, 2.0
			if (x.name() == "rss" && Number(x.@version) <= 2)
			{
				var rss20:RSS20 = new RSS20();
				rss20.populate(x);
				return new RSS20Feed(rss20);
			}
			
			// Don't recognize this feed.  Throw an exception.
			throw new UnknownFeedError("Unable to determine feed type.");
		}
	}
}