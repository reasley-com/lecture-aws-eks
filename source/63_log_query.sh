stats count(*) as ACCESS_COUNT
| filter ( kubernetes.container_name = "api" )
| filter ( log not like /^\[/ and (log like /Health GET API called./ or log like /
REGION GET ALL API/ or log like /LOCATION LIST BY REGION ID API/ )

stats count(*) as ERROR_COUNT by kubernetes.container_name as APP
| filter ( log not like /^\[/ and (log like /WARN/ or log like /error/ )

{ $.log != "[*" && $.kubernetes.container_name = "api" && ( $.log = "*WARN*" || $.log = "*error*" ) }