<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Linear_Fit.aspx.cs" Inherits="YourNamespace.Linear_Fit" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Linear-Fit</title>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    <style>
        #myChart {
            width: 900px;
            height: 500px;
            margin: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="hfChartData" runat="server" />
        <div id="myChart"></div>
    </form>
    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function () {
            var chartData = JSON.parse(document.getElementById('<%= hfChartData.ClientID %>').value);
            Plotly.newPlot('myChart', chartData.data, chartData.layout);
        });
    </script>
</body>
</html>
