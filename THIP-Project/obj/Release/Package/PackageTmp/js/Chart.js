$(function () {
    /* POWER CHART*/
    $.ajax({
        type: "POST",
        url: "Customer2.aspx/GetChartData",
        data: JSON.stringify({ MeterName: 'Electric' }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            var strData = data.d;
            Highcharts.chart('chartpower', {
                chart: {
                    type: 'column'
                },
                title: {
                    align: "center",
                    floating: false,
                    margin: 15,
                    style: { "color": "#333333", "fontSize": "16px" },
                    text: 'Lịch sử tiêu thụ điện',
                },
                xAxis: {
                    categories: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6',
                        'T7', 'T8', 'T9', 'T10', 'T11', 'T12']
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'KWh'
                    },
                    plotLines: [{
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }]
                },
                tooltip: {
                    valueSuffix: 'KWh',
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                        '<td style="padding:0"><b>{point.y:.1f} Kwh</b></td></tr>',
                    footerFormat: '</table>',
                    shared: true,
                    useHTML: true
                },
                plotOptions: {
                    column: {
                        dataLabels: {
                            enabled: true
                        },
                        enableMouseTracking: false
                    }
                },
                series: [{
                    name: 'Điện',
                    data: strToData(strData)
                }]
            });
        },
        error: function () {

        }
    });
    /* WATER CHART*/
    $.ajax({
        type: "POST",
        url: "Customer2.aspx/GetChartData",
        data: JSON.stringify({ MeterName: 'Electric' }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            var strData = data.d;
            Highcharts.chart('chartwater', {
                chart: {
                    type: 'column'
                },
                title: {
                    align: "center",
                    floating: false,
                    margin: 15,
                    style: { "color": "#333333", "fontSize": "16px" },
                    text: 'Lịch sử dùng nước',
                },
                xAxis: {
                    categories: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6',
                        'T7', 'T8', 'T9', 'T10', 'T11', 'T12']
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'm3'
                    },
                    plotLines: [{
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }]
                },
                tooltip: {
                    valueSuffix: '&#179',
                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                        '<td style="padding:0"><b>{point.y:.1f} m3</b></td></tr>',
                    footerFormat: '</table>',
                    shared: true,
                    useHTML: true
                },
                plotOptions: {
                    column: {
                        dataLabels: {
                            enabled: true
                        },
                        enableMouseTracking: false
                    }
                },
                series: [{
                    name: 'Nước',
                    data: strToData(strData)
                }]
            });
        },
        error: function () {

        }
    });
    /*COD CHART*/
    $.ajax({
        type: "POST",
        url: "Customer2.aspx/GetChartData",
        data: JSON.stringify({ MeterName: 'Cod' }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            var strData = data.d;
            var options = {
                chart: {
                    renderTo: 'chartcod',
                    type: 'line',
                },
                title: {
                    align: "center",
                    floating: false,
                    margin: 0,
                    style: { "color": "#333333", "fontSize": "16px" },
                    text: 'Chỉ số COD nước thải',
                },
                xAxis: {
                    categories: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6',
                        'T7', 'T8', 'T9', 'T10', 'T11', 'T12']
                },
                yAxis: {
                    title: {
                        text: 'mg/l'
                    },
                    plotLines: [{
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }]
                },
                plotOptions: {
                    line: {
                        dataLabels: {
                            enabled: true
                        },
                        enableMouseTracking: false
                    }
                },
                series: [{}]
            };
            options.series[0].data = strToData(strData);
            options.series[0].name = 'COD Index';
            var chart = new Highcharts.chart(options);

        },
        error: function () { alert('False!'); }
    });

    function strToData(strData) {

        var arr = new Array();
        var str = strData.split(";");
        for (var i = 0; i < str.length; i++) {
            arr.push(Number(str[i]));
        }
       // arr.push(5);
        return arr;
    }
});