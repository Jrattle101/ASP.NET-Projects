<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ContactList._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Contact List</h1>
        <p class="lead">Here is a list of contacts for you to browse.</p>
        <h2 style="height: 275px">Select a name to see more info<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile1.xml"></asp:XmlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="XmlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: small">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                </Columns>
            </asp:GridView>
            <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/XMLFile1.xml" XPath="root/Id/ContactInfo"></asp:XmlDataSource>
        </h2>
        </div>
    <div class="auto-style1">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Close" Visible="False" />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="XmlDataSource2" ViewStateMode="Enabled" Visible="False">
            <Columns>
                <asp:BoundField DataField="First" HeaderText="First" SortExpression="First" />
                <asp:BoundField DataField="Last" HeaderText="Last" SortExpression="Last" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Home" HeaderText="Home" SortExpression="Home" />
                <asp:BoundField DataField="Cell" HeaderText="Cell" SortExpression="Cell" />
                <asp:BoundField DataField="Office" HeaderText="Office" SortExpression="Office" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
