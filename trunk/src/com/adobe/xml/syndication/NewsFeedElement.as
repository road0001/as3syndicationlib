package com.adobe.xml.syndication
{
	/**
	 * The parent class of any feed-related class that is populated with XML.
	 * This class provides an easy way to get and set the XML used to populate
	 * most of the RSS and Atom related classes.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */	
	public class NewsFeedElement
	{
		protected var x:XMLList;

		/**
		 * Create a new NewsFeedElement instance.
		 * 
		 * @param x The XML used to populate the NewsFeedElement.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function NewsFeedElement(x:XMLList)
		{
			this.x = x;
		}

		/**
		 * Get the XML used to populate the NewsFeedElement.
		 *
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get xml():XMLList
		{
			return this.x;
		}

		/**
		 * Set the XML used to populate the NewsFeedElement.
		 *
		 * @param x The XML used to populate the NewsFeedElement.
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function set xml(x:XMLList):void
		{
			this.x = x;
		}
	}
}