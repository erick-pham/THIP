$(document).ready(function () {


    var table = document.getElementById("daily-confirm-table");
    var rows = table.getElementsByTagName("tr");
    for (i = 1; i < rows.length; i++) {
        row = table.rows[i];
        row.onclick = function () {
            var cell = this.getElementsByTagName("td")[0];
            var id = cell.innerHTML;
            $.ajax({
                type: "POST",
                url: "Manager.aspx/GetTask",
                data: JSON.stringify({ idTask: id }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    $('#task-name').html(data.d[9]);
                    $('#task-start').html(data.d[2]);
                    $('#task-deadline').html(data.d[3]);
                    $('#task-location').html(data.d[7]);
                    $('#task-cost').html(data.d[10]);
                },
                error: function () {
                    alert('Data load: Error');
                }
            });
        }
    };
    $("#daily-confirm-table button").click(function () {
        //alert($(this).target);
        // alert('accept process');
    });
    //$("#Taskstable #checkall").click(function () {
    //    if ($("#Taskstable #checkall").is(':checked')) {
    //        $("#Taskstable input[type=checkbox]").each(function () {
    //            $(this).prop("checked", true);
    //        });

    //    } else {
    //        $("#Taskstable input[type=checkbox]").each(function () {
    //            $(this).prop("checked", false);
    //        });
    //    }
    //});




    //}
    // When the user clicks anywhere outside of the modal, close it
    // When the user clicks anywhere outside of the modal, close it


});