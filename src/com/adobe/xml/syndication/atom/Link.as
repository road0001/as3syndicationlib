package com.adobe.xml.syndication.atom
{
	
	/**
	*	Class that represents a Link element within an Atom feed.
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://www.atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.4.2.7
	*/
	public class Link
	{
		/**
		*	Constant for the "alternate" value of the rel property.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/			
		public static const REL_ALTERNATE:String = "alternate";
		
		/**
		*	Constant for the "related" value of the rel property.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/			
		public static const REL_RELATED:String = "related";
		
		/**
		*	Constant for the "self" value of the rel property.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/			
		public static const REL_SELF:String = "self";
		
		/**
		*	Constant for the "enclosure" value of the rel property.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/			
		public static const REL_ENCLOSURE:String = "enclosure";
		
		/**
		*	Constant for the "via" value of the rel property.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/			
		public static const REL_VIA:String = "via";
		
		/**
		*	A String that specifies the link relation type.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var rel:String;
		
		/**
		*	A String that specifies the link's advisory media type.
		*
		*	This is a hint about the type of the representation that is expected
		*	to be returned when the value of the href attribute is dereferenced.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var type:String;
		
		/**
		*	Describes the language of the resource pointed to by the href 
		*	attribute.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var hreflang:String;
		
		/**
		*	An URI that identifies a categorization scheme.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var href:String;
		
		/**
		*	The IRI that the link represents.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var title:String;
		
		/**
		*	Indicates an advisory length of the linked content in octets / bytes.
		*
		*	This is a hint about the content length of the representation returned
		*	when the IRI in the href attribute is mapped to a URI and dereferenced.
		*
		*	If the length attribute is not present in the original Atom document,
		*	the length will return NaN.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var length:Number;
	}
}