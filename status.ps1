$html=@()
$service=get-service
$html+="<html><head>service status report</head><br><br><body>"
$html+="<table border=5><tr><th>service_name</th><th>display_name</th><th>status</th><tr>" 
foreach($services in $service){
 if($services.status -eq 'running')
 {
  $html+="<tr style=color:green><td>$($services.name)</td><td>$($services.displayname)</td><td>$($services.status)</td></tr>"


 }


}
$html+="</table></body></html>"
$html|out-file -FilePath C:\users\Administrator\Desktop\status.html