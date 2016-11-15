<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="rVentas.aspx.cs" Inherits="YahaidaEx.rVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 258px;
            text-align: right;
        }
        .auto-style2 {
            margin-left: 0px;
            margin-right: 76px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            width: 258px;
            height: 24px;
            font-size: large;
            text-align: right;
        }
        .auto-style6 {
            width: 258px;
            font-size: large;
            text-align: right;
        }
        .auto-style7 {
            width: 86px;
        }
        .auto-style8 {
            height: 24px;
            width: 86px;
        }
        .auto-style9 {
            width: 53px;
        }
        .auto-style10 {
            height: 24px;
            width: 53px;
        }
        .auto-style11 {
            width: 46px;
            font-size: large;
        }
        .auto-style14 {
            width: 86px;
            font-size: large;
            }
        .auto-style16 {
            width: 258px;
            font-size: large;
            text-align: center;
        }
        .auto-style17 {
            width: 53px;
            text-align: center;
        }
        .auto-style18 {
            width: 46px;
            font-size: large;
            text-align: center;
        }
        .auto-style21 {
            width: 53px;
            text-align: left;
        }
        .auto-style24 {
            width: 46px;
            font-size: large;
            text-align: left;
        }

        
        .auto-style26 {
            width: 46px;
        }
        .auto-style27 {
            height: 24px;
            width: 46px;
        }
        .auto-style29 {
            width: 113px;
            text-align: center;
        }
        .auto-style30 {
            text-align: center;
            width: 103px;
        }
        .auto-style31 {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-left: 0;
        }

        
    </style>
    <script src="../JQuery/jquery.searchabledropdown-1.0.7.min.js"></script>

    <script>
        $(document).ready(function () {
            $("select").searchable({
                maxListSize: 200, // if list size are less than maxListSize, show them all
                maxMultiMatch: 300, // how many matching entries should be displayed
                exactMatch: false, // Exact matching on search
                wildcards: true, // Support for wildcard characters (*, ?)
                ignoreCase: true, // Ignore case sensitivity
                latency: 200, // how many millis to wait until starting search
                warnMultiMatch: 'top {0} matches ...',
                warnNoMatch: 'no matches ...',
                zIndex: 'auto'
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        
    <table style="width: 95%;" align="center">
        <tr>
            <td class="auto-style6"><strong>Id</strong></td>
            <td class="auto-style7" colspan="2">
                <asp:TextBox ID="TxtId" runat="server" TextMode="Number" class="form-control" Width="188px" ></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:Button ID="btnBuscarVentas" runat="server" Text="Buscar" class="btn btn-info" />
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" class="form-control" Height="32px" Width="133px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style8" colspan="2">
                &nbsp;</td>
            <td class="auto-style27">
            </td>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Articulo</strong></td>
            <td class="auto-style14" colspan="2">
                <strong>Cantidad</strong></td>
            <td class="auto-style18">
                <strong>Precio</strong></td>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                               
            <asp:DropDownList ID="DdLstArticulos" runat="server" DataTextField="Descripcion" DataValueField="ArticulosId" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DdLstArticulos_SelectedIndexChanged" DataSourceID="ObjectDataSourceArticulos">
            </asp:DropDownList>
                                  
                <asp:ObjectDataSource ID="ObjectDataSourceArticulos" runat="server" SelectMethod="Listado" TypeName="BLL.Articulos">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="*" Name="Campos" Type="String" />
                        <asp:Parameter DefaultValue="1=1" Name="Condicion" Type="String" />
                        <asp:Parameter DefaultValue="DESC" Name="Orden" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                
                <asp:HiddenField ID="HidDescArtic" runat="server"  />
                  
            </td>
            <td class="auto-style30">
                <asp:TextBox ID="TxBxCantidad" runat="server" class="form-control" Width="143px" TextMode="Number" CssClass="form-control" AutoPostBack="True" OnTextChanged="TxBxCantidad_TextChanged" ></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:TextBox ID="TxBxExistencia" runat="server" CssClass="auto-style31" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="txtPrecio" runat="server" class="form-control" Width="152px" TextMode="Number"  ></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:Button ID="btnInsertar" runat="server" class="btn btn-success" Text="Add" OnClick="btnInsertar_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style7" colspan="2">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7" colspan="2">
                <asp:GridView ID="GvDetalle" runat="server" CellPadding="4" CssClass="auto-style2" ForeColor="#333333" GridLines="None" Width="397px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7" colspan="2">
                &nbsp;</td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"><strong>Monto</strong></td>
            <td class="auto-style7" colspan="2">
                <asp:TextBox ID="txtMonto" runat="server" TextMode="Number" class="form-control" Height="31px" Width="262px"></asp:TextBox>
            </td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7" colspan="2">
                &nbsp;</td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnGuardarVentas" runat="server" Text="Guardar" class="btn btn-primary" OnClick="btnGuardarVentas_Click"/>
            </td>
            <td class="auto-style7" colspan="2">
               <center><asp:Button ID="btnEditarVentas" runat="server" Text="Editar" class="btn btn-warning" /></center>
            </td>
            <td class="auto-style26">
                <asp:Button ID="btnEliminarVentas" runat="server" Text="Eliminar" class="btn btn-danger"/>
            </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
         

</asp:Content>
