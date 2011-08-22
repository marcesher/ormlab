<cfscript>
// change these as necessary
cfadminPassword = "localhost";
datasourcePassword = "root";	
	
//log in
admin = createObject( "component", "cfide.adminapi.administrator" );
admin.login( cfadminPassword, "admin" );

//create datasource; note that 'allowMultiQueries=true' will allow us to run multiple SQL statements in a single CFQUERY
dsnName = "ORMLabMAX2011";
ds = createObject( "component", "cfide.adminapi.datasource" );
ds.setMySQL5( name=dsnName, host="localhost", database="ormlabmax2011", port=3306, 
			 username="root", password="root", login_timeout="2", args="allowMultiQueries=true" );

//validate
validated = ds.verifyDSN( dsnName, true );
writeDump( "VALID: #validated#" );

thisDS = ds.getDatasources( dsnName );
writeDump( thisDS );

</cfscript>

