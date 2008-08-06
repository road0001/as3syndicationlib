package com.adobe.xml.syndication.atom
{	
	
	/**
	*	Class that represents a text construct within an Atom feed
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://www.atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.4.2.2
	*/	
	public class TextTag
	{
		/**
		*	Constant for the "text" value of the type element.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public static const TYPE_TEXT:String = "text";
		
		/**
		*	Constant for the "html" value of the type element.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public static const TYPE_HTML:String = "html";
		
		/**
		*	Constant for the "xhtml" value of the type element.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public static const TYPE_XHTML:String = "xhtml";
		
		/**
		*	Identifies the type of the text element. Valid values include "text",
		*	"html", and "xhtml"
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/			
		public var type:String;
		
		/**
		*	The content of the text element.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/			
		public var value:String;
	}
}