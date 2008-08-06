package com.adobe.xml.syndication.atom
{
	public interface IEntry
	{
		function get title():String;
		function get links():Array;
		function get published():Date;
		function get authors():Array;
		function get content():Content;
		function get summary():Summary;
		function get categories():Array;
	}
}