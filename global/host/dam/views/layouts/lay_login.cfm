<!---
*
* Copyright (C) 2005-2008 Razuna
*
* This file is part of Razuna - Enterprise Digital Asset Management.
*
* Razuna is free software: you can redistribute it and/or modify
* it under the terms of the GNU Affero Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* Razuna is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU Affero Public License for more details.
*
* You should have received a copy of the GNU Affero Public License
* along with Razuna. If not, see <http://www.gnu.org/licenses/>.
*
* You may restribute this Program with a special exception to the terms
* and conditions of version 3.0 of the AGPL as described in Razuna's
* FLOSS exception. You should have received a copy of the FLOSS exception
* along with Razuna. If not, see <http://www.razuna.com/licenses/>.
*
--->
<cfoutput>
	<!--- Show if Firebug is enabled --->
	<div id="firebugalert" style="display:none;"></div>
	<div id="outer">
		<div id="loginform">
			<cfif cgi.http_host CONTAINS "razuna.com">
				<cfparam name="attributes.qry_news.news_title" default="" />
				<cfparam name="attributes.qry_news.news_text" default="" />
				<div style="text-align:center;">
					<h2 style="color:red;">#attributes.qry_news.news_title#</h2>
					#attributes.qry_news.news_text#
				</div>
			</cfif>
			<!--- We apologize, but we are down for a emergency maintenance. <a href="http://twitter.com/razunahq" target="_blank">Follow us on Twitter</a> to get current status --->
	    	#body#
  		</div>
	  	<div id="loginformfooter">
	  		<cfif application.razuna.whitelabel>
	  			#wl#
	  		<cfelse>
		  		Powered by <a href="http://razuna.com" target="_blank">Razuna</a> <cfif !application.razuna.isp>#version#<br />
					Licensed under <a href="http://www.razuna.org/whatisrazuna/licensing" target="_blank">AGPL</a>
				</cfif>
				<br />
				<a href="http://blog.razuna.com" target="_blank">Razuna Blog</a>
			</cfif>
		</div>
	</div>
</cfoutput>
