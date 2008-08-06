package com.adobe.xml.syndication.rss
{
	/**
	 * Class that represents an RSS 2.0 Category element.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 * 
	 * @see http://blogs.law.harvard.edu/tech/rss#ltcategorygtSubelementOfLtitemgt	
	 */	
	public class Category
	{
		private var _path:Array;

		/**
		 * The domain identifies a categorization taxonomy.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public var domain:String;

		/**
 		 * Creates a new Category object.
		 * 
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function Category()
		{
			this._path = new Array();
		}

		/**
		 * Adds a path to the category. New paths are appended to the end of
		 * the path array.
		 * 
		 * @param path The path you want to add.
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function addPath(path:String):void
		{
			this._path.push(path);
		}

		/**
		 * Adds an array of paths to the category. New paths are appended to
		 * the end of the path array.
		 * 
		 * @param paths The paths you want to add.
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function addPaths(paths:Array):void
		{
			this._path = this._path.concat(paths);
		}
		
		/**
		 * Returns an array containing the category path, one element per node.
		 * 
		 * @return An array containing the category's path, one element per
		 *         node.
		 * @langversion ActionScript 3.0
		 * @playerversion Flash 8.5
		 * @tiptext
		 */
		public function get path():Array
		{
			return this._path;
		}
	}
}
