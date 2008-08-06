package com.adobe.xml.syndication.rss
{
	/**
	*	Class that represents an RSS 2.0 Cloud element.
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://blogs.law.harvard.edu/tech/rss#ltcloudgtSubelementOfLtchannelgt	
	*/	
	public class Cloud
	{
		/**
		*	Constant that represents an HTTP-POST value for a cloud protocol.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/		
		public static var HTTP_POST:String = "http-post";
		
		/**
		*	Constant that represents an XML-RPC value for a cloud protocol.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public static var XML_RPC:String = "xml-rpc";
		
		/**
		*	Constant that represents an SOAP 1.1 value for a cloud protocol.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public static var SOAP_1_1:String = "soap 1.1";
		
		/**
		*	The domains that receives the XML-RPC calls.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public var domain:String;
		
		/**
		*	The port that the domain is listening on for incoming XML-RPC calls.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public var port:uint;
		
		/**
		*	The path to the file that will handle the XML-RPC calls.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public var path:String;
		
		/**
		*	The name of the XML-RPC API being called.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public var registerProcedure:String;
		
		/**
		*	The protocol being used for the call.
		* 
		* 	@langversion ActionScript 3.0
		*	@playerversion Flash 8.5
		*	@tiptext
		*/
		public var protocol:String;
	}
}
