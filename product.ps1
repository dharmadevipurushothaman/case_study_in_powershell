$html=@()
$products=get-wmiobject -class win32_product | select name, vendor, version
$html+="<html><head>service status report</head><br><br><body>"
$html+="<table border=5><tr><th>product_name</th><th>vendor</th><th>version</th><tr>" 
foreach($product in $products){
 
  $html+="<tr style=color:brown><td>$($product.name)</td><td>$($product.vendor)</td><td>$($product.version)</td></tr>"


 


}
$html+="</table></body></html>"
$html|out-file -FilePath C:\users\Administrator\Desktop\product_report.html
