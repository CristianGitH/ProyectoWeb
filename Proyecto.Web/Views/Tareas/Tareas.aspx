<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Template/Template.Master" AutoEventWireup="true" CodeBehind="Tareas.aspx.cs" Inherits="Proyecto.Web.Views.Tareas.Tareas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenedor" runat="server">
    <script src="../../js/sweetalert.min.js"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <div class="card mx-auto mt-5">
            <div class="card-header">Crear Tareas </div>
            <div class="card-body">
                <%--FILA 1 --%>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12">
                            <h1>
                                <b>Informacion sobre la tarea</b>
                                <asp:Label runat="server" ID="lblOpcion" Visible="false"></asp:Label>
                            </h1>
                        </div>
                    </div>
                </div>
                <%--FILA 2 --%>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblTitularTarea" Text="Titular de la Tarea"></asp:Label>
                            <asp:TextBox runat="server" ID="txtTitularTarea" CssClass="form-control"></asp:TextBox>
                            <ajaxToolkit:TextBoxWatermarkExtender ID="twmtTitularTarea" runat="server"
                                TargetControlID="txtTitularTarea"
                                WatermarkText="Titular Tarea" />
                        </div>
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblAsunto" Text="Asunto"></asp:Label>
                            <asp:TextBox runat="server" ID="txtAsunto" CssClass="form-control"></asp:TextBox>
                            <ajaxToolkit:TextBoxWatermarkExtender ID="twmtAsunto" runat="server"
                                TargetControlID="txtAsunto"
                                WatermarkText="Asunto" />
                        </div>
                    </div>
                </div>
                <%--FILA 3 --%>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblFechaVencimiento" Text="Fecha de vencimiento"></asp:Label>
                            <asp:TextBox runat="server" ID="txtFechaVencimiento" CssClass="form-control"></asp:TextBox>
                            <ajaxToolkit:TextBoxWatermarkExtender ID="twmtFechaVencimiento" runat="server"
                                TargetControlID="txtFechaVencimiento"
                                WatermarkText="Fecha de vencimiento" />
                            <ajaxToolkit:CalendarExtender ID="ceFechaVencimiento" runat="server" TargetControlID="txtFechaVencimiento" Format="MM-dd-yyyy" />
                        </div>
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblContacto" Text="Contacto"></asp:Label>
                            <asp:TextBox runat="server" ID="txtContacto" CssClass="form-control"></asp:TextBox>
                            <ajaxToolkit:TextBoxWatermarkExtender ID="twmtContacto" runat="server"
                                TargetControlID="txtcontacto"
                                WatermarkText="Contacto" />
                        </div>
                    </div>
                </div>
                <%--FILA 4 --%>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblCuenta" Text="Cuenta"></asp:Label>
                            <asp:TextBox runat="server" ID="txtCuenta" CssClass="form-control"></asp:TextBox>
                            <ajaxToolkit:TextBoxWatermarkExtender ID="twmtCuenta" runat="server"
                                TargetControlID="txtCuenta"
                                WatermarkText="Cuenta" />
                        </div>
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblEstado" Text="Estado"></asp:Label>
                            <asp:DropDownList runat="server" ID="ddlEstadoTarea" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>
                </div>
                <%--FILA 5 --%>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblPrioridad" Text="Prioridad"></asp:Label>
                            <asp:DropDownList runat="server" ID="ddlPrioridad" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblEnviarMensaje" Text="Enviar mensaje"></asp:Label>
                            <asp:CheckBox runat="server" ID="chkEnviarMensaje" CssClass="form-control"></asp:CheckBox>
                        </div>
                    </div>
                </div>
                <%--FILA 6 --%>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblRepetir" Text="Cuenta"></asp:Label>
                            <asp:CheckBox runat="server" ID="chkRepetir" CssClass="form-control"></asp:CheckBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblDescripcion" Text="Enviar mensaje"></asp:Label>
                            <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                            <ajaxToolkit:TextBoxWatermarkExtender ID="twmtDescripcion" runat="server"
                                TargetControlID="txtDescripcion"
                                WatermarkText="Descripcion" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
