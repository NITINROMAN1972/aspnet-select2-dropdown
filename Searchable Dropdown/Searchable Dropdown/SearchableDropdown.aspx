<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchableDropdown.aspx.cs" Inherits="Searchable_Dropdown_SearchableDropdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Searchable Dropdown</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+J2Wk5vqXn3Fm/z2N1r8f6VZJ4T3Hdvh4kXG1j4fZ6IsU2f5" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script type="text/javascript" src="JavaScript.js"></script>

    <!-- Using JavaScript library such as Select2 -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
    <script src="RoleAndResoJavaScript.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="card no-b  no-r">
            <div class="card-body">
                <div class="form-row mt-1">
                    <div class="form-group col-md-4 m-0">
                        <label for="email" class="col-form-label badge bg-primary text-wrap mb-3 fs-6">
                            <i class="icon-wpforms mr-2"></i>
                            <asp:Literal ID="Literal1" Text="Role" runat="server"></asp:Literal>
                        </label>
                        <asp:DropDownList ID="ddlRole" ClientIDMode="Static" runat="server" class="form-control is-invalid" OnSelectedIndexChanged="ddlRole_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    </div>
                    <div class="form-group col-6 m-0"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
