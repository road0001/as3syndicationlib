package com.adobe.xml.syndication.atom
{
	import com.adobe.xml.syndication.Namespaces;
	import com.adobe.utils.DateUtil;
	import com.adobe.xml.syndication.ParsingTools;
	import com.adobe.xml.syndication.NewsFeedElement;

	public class FeedData03
		extends NewsFeedElement
		implements IFeedData
	{
		private var atom:Namespace = Namespaces.ATOM_03_NS;
		
		public function FeedData03(x:XMLList)
		{
			super(x);
		}

		public function get title():Title
		{
			var title:Title = new Title();
			title.type = "text";
			title.value = ParsingTools.nullCheck(this.x.atom::title);
			return title;
		}

		public function get links():Array
		{
			var links:Array = new Array();
			var i:XML;
			for each (i in this.x.atom::link)
			{
				var link:Link = new Link();
				link.rel = ParsingTools.nullCheck(i.@rel);
				link.type = ParsingTools.nullCheck(i.@type);
				link.href = ParsingTools.nullCheck(i.@href);
				links.push(link);
			}
			return links;
		}
	}
}