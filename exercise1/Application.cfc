<cfcomponent>
	
	<cfset this.name = hash( getCurrentTemplatePath() )>
	
	<!--- TODO: 1) Configure ORM --->
	
	<cffunction name="onRequestStart">
		<cfif structKeyExists( url, "ormreload" )>
			<cfset ormReload()>
		</cfif>
	</cffunction>
	
</cfcomponent>