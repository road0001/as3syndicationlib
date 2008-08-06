package com.adobe.xml.syndication.atom
{
	public interface IAtom
	{
		function get feedData():IFeedData;
		function get entries():Array;
	}
}