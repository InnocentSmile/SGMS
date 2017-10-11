<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Area.ascx.cs" Inherits="uc_Area" %>
<script src="../js/jquery-1.5.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        GetData($("#province"), '');
        a();
        $("#province").bind("change", function () {
            $('#area').find("option:gt(0)").remove();
            if ($("#province").val() != '-1') {
                GetData($("#city"), $("#province").val() + ",c");
            }
        });

        $("#city").bind("change", function () {
            if ($("#city").val() != '-1') {
                GetData($("#area"), $("#city").val() + ",a");
            }

        });

        $("#div1 select").change(function () {
            $(this).next('input[type=hidden]').val($(this).val());
        });

    });

    function GetData(sel, param) {
        sel.find("option:gt(0)").remove();
        $.ajax({
            type: "post",
            url: "./Area.ashx?action=province",
            contentType: "application/x-www-form-urlencoded;charset=UTF-8",
            data: "param=" + param,
            datatype: "json",
            async: false,
            success: function (data) {
                var json = eval(data);
                if (!json) return;
                $.each(json, function (i, n) {
                    sel.append($("<option value='" + n.name + "'>" + n.name + "</option>"));
                });
            },
            error: function (e, x) {
                alert(e.responseText);
            }
        });
    }
    var a = function () {
        if ($("#<%=hidProvince.ClientID %>").val() != '') {
            setTimeout(function () { $("#province").val($("#<%=hidProvince.ClientID %>").val()); }, 1);
            setTimeout(function () { $("#province").change(); }, 1);

        }
        if ($("#<%=hidCity.ClientID %>").val() != '' && $("#city").val() == '-1') {
            setTimeout(function () { $("#city").val($("#<%=hidCity.ClientID %>").val()); }, 1);
            setTimeout(function () { $("#city").change(); }, 1);

        }

        if ($("#<%=hidArea.ClientID %>").val() != '' && $("#area").val() == '-1') {
            setTimeout(function () { $("#area").val($("#<%=hidArea.ClientID %>").val()); }, 1);
            setTimeout(function () { $("#area").change(); }, 1);
        }

    };
</script>
<div id="div1">
    <select name="province" id="province" style="width:100px">
        <option value="-1">请选择省</option>
    </select>
    <asp:HiddenField ID="hidProvince" runat="server" />
    <select name="city" id="city" style="width:100px">
        <option value="-1">请选择市</option>
    </select>
    <asp:HiddenField ID="hidCity" runat="server" />
    <select name="area" id="area" style="width:100px">
        <option value="-1">请选择县/区</option>
    </select>
    <asp:HiddenField ID="hidArea" runat="server" />
</div>
