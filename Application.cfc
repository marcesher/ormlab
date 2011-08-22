<cfcomponent>
	
	<cfset this.name = hash( getCurrentTemplatePath() )>
	<cfset this.datasource="ORMLabMAX2011">
	
	
	<!--- Configure ORM Settings --->
	<cfset this.ormEnabled = true>
	<cfset this.ormSettings = { logSQL = true, flushAtRequestEnd = false, autoManageSession = false }>
	
	<cffunction name="onRequestStart">
		<cfif structKeyExists( url, "ormreload" )>
			<cfset ormReload()>
		</cfif>
	</cffunction>
	
</cfcomponent>