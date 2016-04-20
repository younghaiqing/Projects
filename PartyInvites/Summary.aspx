<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="PartyInvites.Summary" %>

<%@ Import Namespace="PartyInvites" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="PartyStyles.css" rel="stylesheet" />
</head>
<body>
    <h2>RSVP Summary</h2>
    <h3>People who will attend</h3>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>
        </thead>
        <tbody>
            <% var yesData = ResponseRepository.GetRepository().GetAllResponses().Where(r => r.WillAttend.HasValue && r.WillAttend.Value);
               foreach (var rsvp in yesData)
               {
                   string htmlString = string.Format(" <tr><td>{0}</td><td>{1}</td><td>{2}</td></tr>", rsvp.Name, rsvp.Email, rsvp.Phone);
                   Response.Write(htmlString);
               }
            %>
        </tbody>
    </table>
    <h3>People who will not attend</h3>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>
        </thead>
        <tbody><%=GetNoShowHtml() %></tbody>
    </table>
</body>
</html>