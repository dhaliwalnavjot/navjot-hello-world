﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XEx13CustomerList.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ch13: Customer List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <header class="jumbotron"><%-- image set in site.css --%></header>
    <main>
        <form id="form1" runat="server" class="form-horizontal">
            <div class="form-group">
                <label id="lblState" for="ddlState" 
                    class="col-xs-4 col-sm-offset-1 col-sm-3 control-label">
                    Choose a state:</label>
                <div class="col-xs-8 col-sm-5">
                    <%-- state drop-down goes here --%>
                    <asp:DropDownList ID="ddl_states" runat="server"
                        DataSourceID="sds_states"
                        DataTextField="StateName"
                        DataValueField="StateCode">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Sds_states" runat="server" ConnectionString='<%$ ConnectionStrings:cs_halloween %>' SelectCommand="SELECT [StateCode], [StateName] FROM [States]"></asp:SqlDataSource>
                </div>
            </div>

            <div class="form-group">
                <div class="col-xs-12 col-sm-offset-1 col-sm-10">
                    <%-- customer data list goes here --%>
                    <asp:DataList ID="Ddl_customers" runat="server"></asp:DataList>
                </div>  
            </div>

        </form>
    </main>
</div>
</body>
</html>