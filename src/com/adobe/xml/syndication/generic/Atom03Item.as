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

package com.adobe.xml.syndication.generic
{

	import com.adobe.xml.syndication.atom.Author;
	import com.adobe.xml.syndication.atom.Entry03;
	import com.adobe.xml.syndication.atom.Link;
	import com.adobe.xml.syndication.atom.Category;

	public class Atom03Item
		implements IItem
	{
		private var entry:Entry03;

		public function Atom03Item(entry:Entry03)
		{
			this.entry = entry;
		}

		public function get title():String
		{
			return this.entry.title;
		}

		public function get link():String
		{
			for each (var link:Link in this.entry.links)
			{
				if (link.rel == null || link.rel == "alternate")
				{
					return link.href;
				}
			}
			return null;
		}

		public function get id():String
		{
			return null;
		}

		public function get date():Date
		{
			return this.entry.published;
		}

		public function get authors():Array
		{
			if (this.entry.authors == null || this.entry.authors.length == 0)
			{
				return null;
			}

			var authors:Array = new Array();
			var author:com.adobe.xml.syndication.atom.Author;
			for each (author in this.entry.authors)
			{
				var newAuthor:com.adobe.xml.syndication.generic.Author = new com.adobe.xml.syndication.generic.Author();
				newAuthor.name = author.name;
				newAuthor.url = author.uri;
				newAuthor.email = author.email;
				authors.push(newAuthor);
			}
			return authors;
		}

		public function get topics():Array
		{
			if (this.entry.categories == null || this.entry.categories.length == 0)
			{
				return null;
			}

			return this.entry.categories;
		}

		public function get excerpt():Excerpt
		{
			var excerpt:Excerpt = new Excerpt;
			excerpt.src = this.entry.content.src;
			excerpt.type = this.entry.content.type;
			excerpt.value = this.entry.content.value;
			return excerpt;
		}

		public function get media():Media
		{
			return null;
		}
	}
}