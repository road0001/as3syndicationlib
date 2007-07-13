/*
	Adobe Systems Incorporated(r) Source Code License Agreement
	Copyright(c) 2005 Adobe Systems Incorporated. All rights reserved.
	
	Please read this Source Code License Agreement carefully before using
	the source code.
	
	Adobe Systems Incorporated grants to you a perpetual, worldwide, non-exclusive, 
	no-charge, royalty-free, irrevocable copyright license, to reproduce,
	prepare derivative works of, publicly display, publicly perform, and
	distribute this source code and such derivative works in source or 
	object code form without any attribution requirements.  
	
	The name "Adobe Systems Incorporated" must not be used to endorse or promote products
	derived from the source code without prior written permission.
	
	You agree to indemnify, hold harmless and defend Adobe Systems Incorporated from and
	against any loss, damage, claims or lawsuits, including attorney's 
	fees that arise or result from your use or distribution of the source 
	code.
	
	THIS SOURCE CODE IS PROVIDED "AS IS" AND "WITH ALL FAULTS", WITHOUT 
	ANY TECHNICAL SUPPORT OR ANY EXPRESSED OR IMPLIED WARRANTIES, INCLUDING,
	BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
	FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  ALSO, THERE IS NO WARRANTY OF 
	NON-INFRINGEMENT, TITLE OR QUIET ENJOYMENT.  IN NO EVENT SHALL MACROMEDIA
	OR ITS SUPPLIERS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
	EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
	PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
	OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
	WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR 
	OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOURCE CODE, EVEN IF
	ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

package com.adobe.xml.syndication.atom
{
	import com.adobe.xml.syndication.Namespaces;
	import com.adobe.xml.syndication.NewsFeedElement;
	import com.adobe.utils.DateUtil;
	import com.adobe.xml.syndication.ParsingTools;


	/**
	*	Class that represents an Entry element within an Atom feed
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://www.atomenabled.org/developers/syndication/atom-format-spec.php#rfc.section.4.1.2
	*/
	public class Entry03
		extends NewsFeedElement
		implements IEntry
	{
		private var atom:Namespace = Namespaces.ATOM_03_NS;
		private var xhtml:Namespace = Namespaces.XHTML_NS;
		private var dc:Namespace = Namespaces.DC_NS;

		public function Entry03(x:XMLList)
		{
			super(x);
		}

		public function get title():String
		{
			return ParsingTools.nullCheck(this.x.atom::title);
		}

		public function get links():Array
		{	
			var links:Array = new Array();
			var i:XML;
			for each (i in this.x.atom::link)
			{
				var link:Link = new Link();
				link.rel = ParsingTools.nullCheck(i.@rel);
				link.type = ParsingTools.nullCheck(i.@type);
				link.href = ParsingTools.nullCheck(i.@href);
				links.push(link);
			}
			return links;
		}

		public function get published():Date
		{
			return ParsingTools.dateCheck(this.x.atom::modified, DateUtil.parseW3CDTF);
		}

		public function get authors():Array
		{
			var authors:Array = new Array();
			var i:XML;
			for each (i in this.x.atom::author)
			{
				var author:Author = new Author();
				author.name = ParsingTools.nullCheck(i.atom::["name"]);
				author.email = ParsingTools.nullCheck(i.atom::email);
				author.uri = ParsingTools.nullCheck(i.atom::uri);
				authors.push(author);
			}
			return authors;
		}

		public function get content():Content
		{
			var content:Content = new Content();
			content.type = ParsingTools.nullCheck(this.x.atom::content.@mode);
			if (content.type == "xhtml")
			{
				content.value = ParsingTools.nullCheck(this.x.atom::content.xhtml::div);				
			}
			else
			{
				content.value = ParsingTools.nullCheck(this.x.atom::content);
			}
			return content;
		}

		public function get categories():Array
		{
			if (ParsingTools.nullCheck(this.x.dc::subject) == null) return null;
			var subjects:Array = new Array();
			var i:XML;
			for each (i in this.x.dc::subject)
			{
				subjects.push(i);
			}
			return subjects;
		}
	}
}