package com.adobe.xml.syndication.generic
{

	import com.adobe.xml.syndication.atom.Author;
	import com.adobe.xml.syndication.atom.Entry03;
	import com.adobe.xml.syndication.atom.Link;
	import com.adobe.xml.syndication.atom.Category;

	public class Atom03Item
		implements IItem
	{
		private var entry:Entry03;

		public function Atom03Item(entry:Entry03)
		{
			this.entry = entry;
		}

		public function get title():String
		{
			return this.entry.title;
		}

		public function get link():String
		{
			for each (var link:Link in this.entry.links)
			{
				if (link.rel == null || link.rel == "alternate")
				{
					return link.href;
				}
			}
			return null;
		}

		public function get id():String
		{
			return null;
		}

		public function get date():Date
		{
			return this.entry.published;
		}

		public function get authors():Array
		{
			if (this.entry.authors == null || this.entry.authors.length == 0)
			{
				return null;
			}

			var authors:Array = new Array();
			var author:com.adobe.xml.syndication.atom.Author;
			for each (author in this.entry.authors)
			{
				var newAuthor:com.adobe.xml.syndication.generic.Author = new com.adobe.xml.syndication.generic.Author();
				newAuthor.name = author.name;
				newAuthor.url = author.uri;
				newAuthor.email = author.email;
				authors.push(newAuthor);
			}
			return authors;
		}

		public function get topics():Array
		{
			if (this.entry.categories == null || this.entry.categories.length == 0)
			{
				return null;
			}

			return this.entry.categories;
		}

		public function get excerpt():Excerpt
		{
			var excerpt:Excerpt = new Excerpt;
			if (this.entry.content != null)
			{
				excerpt.src = this.entry.content.src;
				excerpt.type = this.entry.content.type;
				excerpt.value = this.entry.content.value;
			}
			else if (this.entry.summary != null)
			{
				excerpt.type = this.entry.summary.type;
				excerpt.value = this.entry.summary.value;
			}
			return excerpt;
		}

		public function get media():Media
		{
			return null;
		}
	}
}