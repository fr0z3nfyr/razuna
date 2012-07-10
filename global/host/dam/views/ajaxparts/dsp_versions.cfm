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
<cfif session.hosttype EQ 0>
	<cfinclude template="dsp_host_upgrade.cfm">
<cfelse>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="grid">
		<tr>
			<th colspan="2">#myFusebox.getApplicationData().defaults.trans("versions_upload")#</th>
		</tr>
		<tr>
			<td colspan="2">#myFusebox.getApplicationData().defaults.trans("versions_upload_desc")#</td>
		</tr>
		<tr class="list">
			<td><iframe src="#myself#ajax.versions_upload&folder_id=#attributes.folder_id#&file_id=#attributes.file_id#&extjs=T&tempid=#attributes.tempid#" frameborder="false" scrolling="false" style="border:0px;width:500px;height:35px;" id="ifupload"></iframe></td>
			<td><input type="button" value="#myFusebox.getApplicationData().defaults.trans("versions_upload_button")#" class="button" name="upversion" onclick="vercreate('#attributes.file_id#','#attributes.type#','#attributes.tempid#');return false;"></td>
		</tr>
	</table>
	<div id="status" style="width:95%;padding:10px;color:green;background-color:##FFFFE0;display:none;"></div>
	<div id="versionlist"></div>
	
	<!--- Load Version list --->
	<script language="JavaScript" type="text/javascript">
		loadcontent('versionlist','#myself#c.versions_list&file_id=#attributes.file_id#&type=#attributes.type#');
	</script>
</cfif>
</cfoutput>