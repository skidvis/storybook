<% 
response.buffer= true
fcount=request.querystring("page")
if fcount="" then fcount="a0"
%>
<!-- #include virtual="/header.txt" -->
<!-- #include file="info.asp" -->
<table summary="comic" border="0" align="center">
 <tr>
  <td><img src="<% response.write fname %>" /></td>
  <td valign="top" width="325">
   <% response.write ftext %>
   <table align="center" summary="choices" cellspacing="0" border="0">
    <tr>
     <td align="center"><b><% response.write choice1%></td>
    </tr>
    <tr>
     <td align="center"><b><% response.write choice2%></td>  
    </tr>
   </table>
  </td>
 </tr>
</table>
<center>&copy;1999-2000 SkidVis.com</center>
<!-- #include virtual="/footer.txt" -->