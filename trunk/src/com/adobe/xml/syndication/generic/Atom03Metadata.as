package com.adobe.xml.syndication.generic
{

	import com.adobe.xml.syndication.atom.Author;
	import com.adobe.xml.syndication.atom.FeedData03;
	import com.adobe.xml.syndication.atom.Link;

	public class Atom03Metadata
		implements IMetadata
	{
		private var feedData:FeedData03;

		public function Atom03Metadata(feedData:FeedData03)
		{
			this.feedData = feedData;
		}

		public function get title():String
		{
			return this.feedData.title.value;
		}

		public function get authors():Array
		{
			return null;
		}

		public function get link():String
		{
			for each (var link:Link in this.feedData.links)
			{
				if (link.rel == "alternate")
				{
					return link.href;
				}
			}
			return null;
		}

		public function get rights():String
		{
			return null;
		}

		public function get image():Image
		{
			return null;
		}

		public function get date():Date
		{
			return null;
		}

		public function get description():String
		{
			return null;
		}
	}
}