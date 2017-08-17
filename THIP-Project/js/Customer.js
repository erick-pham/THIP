$(document).ready(function () {
    $('#btnSaveBill').click(function () {
        window.print();
    });

    $('#btnPrintBill').click(function () {
        window.print();
    });

    $('#btnConfirm-Power').on('click', function () {
        $(this).attr("disabled", "disabled");
        $(this).html('<img src="Images/icon-check.png" style="width: 20px; height: 20px" />Đã xác nhận');
    });

    $('#btnConfirm-WasteWater').on('click', function () {
        $(this).attr("disabled", "disabled");
        $(this).html('<img src="Images/icon-check.png" style="width: 20px; height: 20px" />Đã xác nhận');
    });

    $('#btnConfirm-CleanWater').on('click', function () {
        $(this).attr("disabled", "disabled");
        $(this).html('<img src="Images/icon-check.png" style="width: 20px; height: 20px" />Đã xác nhận');
    });

    $('#chatPopup').on('click', function () {
        //var o = document.getElementById("fback_box");
        //if ("0px" !== o.style.bottom) {
        //    o.style.bottom = "0px";
        //    $(this).removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
        //}
        //else {
        //    o.style.bottom = "-275px";
        //    $(this).removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
        //}
        $('#psan_box').fadeToggle(0, function () {
            var o = document.getElementById("psan_box");
            if (o.style.display == "none") {
                $('#iconPopup').removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
            }
            else {
                $('#iconPopup').removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
            }
        });
    });

    $('#btn-send-feadback').on('click', function () {
        var txt = $('#fback-content').val();
        if (txt.length == 0) {
            $('#fback-mess').empty();
            $('#fback-mess').append("Bạn phải ghi nội dung phản hồi.");
            $('#fback-content').focus();
        }
        else {
            $('#fback-content').val("");
            $('#fback-mess').empty();
            $('#fback-mess').append("Chúng tôi đã nhận phản hồi và sẽ giải quyết nhanh nhất có thể.");
            setTimeout(function () {
                $('#fback-mess').empty();
            }, 3000);
        }

    });
})