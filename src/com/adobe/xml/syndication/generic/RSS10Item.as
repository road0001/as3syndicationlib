package com.adobe.xml.syndication.generic
{

	import com.adobe.xml.syndication.rss.Item10;

	/**
	 * Class that abstracts out the specific characteristics of an RSS 1.0 item
	 * into a generic Item. You create an instance using an Item10 object,
	 * then you can access it in a generic way.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */	
	public class RSS10Item
		implements IItem
	{
		private var item:Item10;

		/**
		 * Create a new RSS10Item instance.
		 *
		 * @param item An Item10 object that you want abstracted.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function RSS10Item(item:Item10)
		{
			this.item = item;
		}

		/**
 		 * This item's title.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get title():String
		{
			return this.item.title;
		}

		/**
 		 * This item's link.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get link():String
		{
			return this.item.link;
		}

		/**
 		 * This item's unique ID.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get id():String
		{
			return null;
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
			return this.item.date;
		}

		/**
 		 * One or more authors of this item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get authors():Array
		{
			if (this.item.creators == null) return null;
			var authors:Array = new Array();
			for each (var author:String in this.item.creators)
			{
				if (author == null) continue;
				var a:Author = new Author();
				a.name = author;
				authors.push(a);
			}
			return authors;
		}

		/**
 		 * One or more subjects of this item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get topics():Array
		{
			if (this.item.subjects == null) return null;
			return this.item.subjects;
		}

		/**
 		 * An excerpt or description of this item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get excerpt():Excerpt
		{
			var excerpt:Excerpt = new Excerpt;
			excerpt.src = null;
			excerpt.type = "text";
			excerpt.value = this.item.description;
			return excerpt;
		}

		/**
 		 * Any media associated with this item.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get media():Media
		{
			return null;
		}
	}
}