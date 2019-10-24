RESTSERVER=192.168.130.8

# # for Cloud Driver Info
curl -X POST http://$RESTSERVER:1024/driver -H 'Content-Type: application/json' -d '{"DriverName":"cloudit-driver01","ProviderName":"CLOUDIT", "DriverLibFileName":"cloudit-driver-v1.0.so"}'

 # for Cloud Credential Info
curl -X POST http://$RESTSERVER:1024/credential -H 'Content-Type: application/json' -d '{"CredentialName":"cloudit-credential01","ProviderName":"CLOUDIT",
"KeyValueInfoList": [{"Key":"IdentityEndpoint", "Value":"http://stg.cloudit.co.kr:9090"},
{"Key":"Username", "Value":"cloudit"},
{"Key":"Password", "Value":"cloudit"},
{"Key":"TenantId", "Value":"tnt0009"},
{"Key":"AuthToken", "Value":"05ae4abeebf06cc29a1d5c96c5fc4459abf7ee1d"}]}'

# # for Cloud Region Info
curl -X POST http://$RESTSERVER:1024/region -H 'Content-Type: application/json' -d '{"RegionName":"cloudit-region01","ProviderName":"CLOUDIT", "KeyValueInfoList": [{"Key":"location", "Value":"koreacentral"}]}'

# # for Cloud Connection Config Info
curl -X POST http://$RESTSERVER:1024/connectionconfig -H 'Content-Type: application/json' -d '{"ConfigName":"cloudit-config01","ProviderName":"CLOUDIT", "DriverName":"cloudit-driver01", "CredentialName":"cloudit-credential01", "RegionName":"cloudit-region01"}'
