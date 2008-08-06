package com.adobe.xml.syndication
{
	/**
	 * Class that contains static members of all the namesapces required for
	 * parsing RSS and Atom feeds.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 8.5
	 * @tiptext
	 */	
	public class Namespaces
	{
		public static var RDF_NS:Namespace = new Namespace("http://www.w3.org/1999/02/22-rdf-syntax-ns#");
		public static var DC_NS:Namespace = new Namespace("http://purl.org/dc/elements/1.1/");
		public static var SY_NS:Namespace = new Namespace("http://purl.org/rss/1.0/modules/syndication/");
		public static var CO_NS:Namespace = new Namespace("http://purl.org/rss/1.0/modules/company/");
		public static var TI_NS:Namespace = new Namespace("http://purl.org/rss/1.0/modules/textinput/");
		public static var RSS_NS:Namespace = new Namespace("http://purl.org/rss/1.0/");
		public static var ATOM_NS:Namespace = new Namespace("http://www.w3.org/2005/Atom");
		public static var ATOM_03_NS:Namespace = new Namespace("http://purl.org/atom/ns#");
		public static var XHTML_NS:Namespace = new Namespace("http://www.w3.org/1999/xhtml");
		public static var CONTENT:Namespace = new Namespace("http://purl.org/rss/1.0/modules/content/");
	}
}