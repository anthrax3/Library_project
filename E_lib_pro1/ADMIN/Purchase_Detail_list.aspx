        
 <%@ Page Language="C#" MasterPageFile="~/ADMIN/ADMIN.Master" AutoEventWireup="true" CodeBehind="Purchase_Detail_list.aspx.cs" Inherits="AURO.ADMIN.Purchase_Detail_list" Title="Purchase_Detail List Page" %>
     <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     </asp:Content>
     <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
               <table style="width: 100%;">
                <tr>
                    <td align="center">
                        <h2>
                            Purchase-Detail List
                        </h2>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="lblResult" runat="server" Text="  "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Search On :
                        <asp:DropDownList ID="cboSearch" runat="server" Height="25px" Width="150px">
        
                            <asp:ListItem Value="pd_id">Pd id</asp:ListItem>
                            <asp:ListItem Value="Member_Name">Member_Name</asp:ListItem>
                            <asp:ListItem Value="Pm_Date">Pm_Date</asp:ListItem>
                            <asp:ListItem Value="Pur_bill_no">Pur_bill_no</asp:ListItem>
                            <asp:ListItem Value="Sup_name"></asp:ListItem>
                            <asp:ListItem Value="Title"></asp:ListItem>
                            <asp:ListItem Value="Author"></asp:ListItem>
                            <asp:ListItem Value="Book_type"></asp:ListItem>
                            <asp:ListItem Value="Edition"></asp:ListItem>
                            <asp:ListItem Value="College_id"></asp:ListItem>
        
                            <asp:ListItem Value="Pur_date"></asp:ListItem>
        
                        </asp:DropDownList>
                        &nbsp;Search By :
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                        &nbsp;<asp:Button CssClass="button" ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" />
                        &nbsp;<asp:Button ID="btnReport" runat="server" CssClass="button" 
                            OnClick="btnReport_Click" Text="Report" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="Grid1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="4" DataKeyNames="Pd_id" DataSourceID="SqlDataSource1" 
                            ForeColor="#333333" GridLines="None" AllowPaging="True" 
                            AllowSorting="True">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                             <asp:HyperLinkField DataNavigateUrlFields="Pd_id"    
            DataNavigateUrlFormatString="~/ADMIN/Purchase_Detail_entry.aspx?action=view&amp;id={0}" 
            Text="View" />
                                <asp:BoundField DataField="Pd_id" HeaderText="Pd id" ReadOnly="True" 
                                    SortExpression="Pd_id" Visible="False" />
                                <asp:BoundField DataField="Member_Name" HeaderText="Member Name" 
                                    ReadOnly="True" SortExpression="Member_Name" />
                                <asp:BoundField DataField="Pm_Number" HeaderText="Pm Number" 
                                    SortExpression="Pm_Number" Visible="False" />
                                <asp:BoundField DataField="Pm_Date" HeaderText="Pm Date" 
                                    SortExpression="Pm_Date" />
                                <asp:BoundField DataField="Pur_bill_no" HeaderText="Pur bill no" 
                                    SortExpression="Pur_bill_no" Visible="False" />
                                <asp:BoundField DataField="Sup_name" HeaderText="Sup name" 
                                    SortExpression="Sup_name" />
                                <asp:BoundField DataField="Sup_mobile" HeaderText="Sup mobile" 
                                    SortExpression="Sup_mobile" />
                                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                <asp:BoundField DataField="Author" HeaderText="Author" 
                                    SortExpression="Author" />
                                <asp:BoundField DataField="Book_type" HeaderText="Book type" 
                                    SortExpression="Book_type" Visible="False" />
                                <asp:BoundField DataField="Edition" HeaderText="Edition" 
                                    SortExpression="Edition" />
                                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" 
                                    Visible="False" />
                                <asp:BoundField DataField="Amount" HeaderText="Amount" 
                                    SortExpression="Amount" />
                                <asp:BoundField DataField="College_id" HeaderText="College id" 
                                    SortExpression="College_id" Visible="False" />
                                <asp:BoundField DataField="Pur_date" HeaderText="Pur date" 
                                    SortExpression="Pur_date" Visible="False" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [VPurchase_Detail]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblRec" Visible="false" runat="server" Text="Total Records : "></asp:Label>
                    </td>
                </tr>
            </table>  
            </ContentTemplate>
            </asp:UpdatePanel>
        
        </asp:Content>
        
        

