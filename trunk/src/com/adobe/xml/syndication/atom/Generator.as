package com.adobe.xml.syndication.atom
{
	
	/**
	*	Class that represents an generator element within an Atom feed.
	*
	*	The tag identifies the agent used to generate a specific feed.
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://www.atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.4.2.4
	*/		
	public class Generator
	{
		/**
		*	An IRI reference which when dereferenced, the resulting URI (mapped 
		*	from an IRI, if necessary) SHOULD produce a representation that is 
		*	relevant to that agent.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/			
		public var uri:String;
		
		/**
		*	Identifies the version of the generating agent.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/			
		public var version:String;
		
		
		/*
			//TODO
			from the spec:
			Entities such as "&amp;" and "&lt;" represent their corresponding 
			characters ("&" and "<" respectively), not markup.
			
			Do we decode these?
		*/
		/**
		*	A string that is a human-readable name for the generating agent. 
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/	
		public var value:String;
	}
}