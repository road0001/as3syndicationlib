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
	import com.adobe.utils.DateUtil;
	import com.adobe.xml.syndication.Namespaces;
	import com.adobe.xml.syndication.NewsParser;
	import com.adobe.xml.syndication.ParsingTools;
	
	/**
	*	Class that represents an Atom 1.0 XML document.
	* 
	* 	@langversion ActionScript 3.0
	*	@playerversion Flash 8.5
	*	@tiptext
	* 
	* 	@see http://www.atomenabled.org/developers/syndication/atom-format-spec.php
	*/	
	public class Atom03
		extends NewsParser
		implements IAtom
	{
		private var atom:Namespace = Namespaces.ATOM_03_NS;
		private var _feedData:FeedData03;
		private var _entries:Array;

		public function Atom03()
		{
			super();
		}

		public function get feedData():IFeedData
		{
			if (this._feedData == null)
			{
				this._feedData = new FeedData03(XMLList(this.x));
			}
			return this._feedData;
		}

		public function get entries():Array
		{
			if (ParsingTools.nullCheck(this.x.atom::entry) == null)
			{
				return null;
			}

			if (this._entries == null)
			{
				this._entries = new Array();
				var i:XML;
				for each (i in this.x.atom::entry)
				{
					this._entries.push(new Entry03(XMLList(i)));
				}
			}
			return this._entries;
		}
	}
}