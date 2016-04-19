<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PartyInvites.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="PartyStyles.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="rsvpform" runat="server">
        <div>
            <div>
                <h1>New Years Eve at Young</h1>
                <p>were going to have an exciting party and you are invited!</p>
            </div>
            <div>
                <label>You name:</label><input type="text" id="name"  runat="server"/>
            </div>
            <div>
                <label>You email:</label><input type="text" id="email" runat="server" />
            </div>

            <div>
                <label>You phone:</label><input type="text" id="phone"  runat="server"/>
            </div>
            <div>
                <label>Will you attend?</label>
                <select id="willattend" runat="server">
                    <option value="">Choose an option</option>
                    <option value="true">Yes</option>
                    <option value="false">No</option>
                </select>
            </div>
            <div>
                <button type="submit">Submit RSVP</button></div>

        </div>
    </form>
</body>
</html>
