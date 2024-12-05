<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datatable.aspx.cs" Inherits="DataTableWebForm.Datatable" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>DataTable with Ibrahim</title>

    <!-- Include jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <!-- Include DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" />
    
    <!-- Include DataTables JS -->
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

    <!-- Custom Styles for Better Design -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #007BFF;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        header h2 {
            margin: 0;
            font-size: 2em;
        }

        .container {
            width: 90%;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:nth-child(even) td {
            background-color: #f1f1f1;
        }

        /* Responsive design */
        @media screen and (max-width: 768px) {
            th, td {
                font-size: 14px;
                padding: 8px;
            }
        }

        .dataTables_wrapper {
            padding: 20px;
        }
    </style>

    <script>
        $(document).ready(function () {
            // Initialize the DataTable
            $('#example').DataTable({
                paging: true, // Enable pagination
                searching: true, // Enable search functionality
                ordering: true, // Enable column sorting
                info: true, // Show table information
                responsive: true // Make the table responsive
            });
        });
    </script>
</head>
<body>

    <header>
        <h2>Data Tabe Example With Ibrahim</h2>
    </header>

    <div class="container">
        <table id="example" class="display" cellspacing="0">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("Name") %></td>
                            <td><%# Eval("Email") %></td>
                            <td><%# Eval("Phone") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</body>
</html>
