/// <reference path="jquery-3.2.1.min.js" />

$(function () {

    var arrCategories = new Array();

    var arrChartPowerData1 = new Array();
    var arrChartPowerData2 = new Array();

    var arrChartWaterData1 = new Array();
    var arrChartWaterData2 = new Array();

    var arrChartWasteData1 = new Array();
    var arrChartWasteData2 = new Array();

    var arrChartCodData = new Array();
    /* POWER CHART*/
    function createChartPower() {
        Highcharts.chart('chartblock', {
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
                categories: arrCategories
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
                color: 'rgba(248,161,63,1)',
                data: arrChartPowerData1
            }]
        });
    }

    /* WATER CHART*/
    function createChartWater() {
        Highcharts.chart('chartblock', {
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
                categories: arrCategories
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
                name: 'Nước cấp',
                data: arrChartWaterData1
            }]
        });
    }
    /* WASTE CHART*/
    function createChartWaste() {
        Highcharts.chart('chartblock', {
            chart: {
                type: 'column'
            },
            title: {
                align: "center",
                floating: false,
                margin: 15,
                style: { "color": "#333333", "fontSize": "16px" },
                text: 'Lịch sử thải nước',
            },
            xAxis: {
                categories: arrCategories
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
                name: 'Nước thải',
                data: arrChartWasteData1
            }]
        });
    }
    /* COD CHART*/
    function createChartCod() {
        Highcharts.chart('chartblock', {
            chart: {
                type: 'line'
            },
            title: {
                align: "center",
                floating: false,
                margin: 0,
                style: { "color": "#333333", "fontSize": "16px" },
                text: 'Chỉ số COD nước thải',
            },
            xAxis: {
                categories: arrCategories
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
            series: [{
                name: 'Chỉ số COD',
                data: arrChartCodData
            }]
        });
    }
    $.ajax({
        type: "POST",
        url: "Customer2.aspx/GetChart",
        //data: JSON.stringify({ chartName: 'elec' }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            arrCategories = data.d[0];
            arrChartPowerData1 = data.d[1];
            arrChartPowerData2 = data.d[2];

            arrChartWaterData1 = data.d[3];
            arrChartWaterData2 = data.d[4];

            arrChartWasteData1 = data.d[5];
            arrChartWasteData2 = data.d[6];

            arrChartCodData = data.d[7];
            createChartPower();
            //createChartWater();
        },
        error: function () {

        }
    });

    $('#lbPower').on('click', function () {
        createChartPower();
    });

    $('#lbWater').on('click', function () {
        createChartWater();
    });

    $('#lbWaste').on('click', function () {
        createChartWaste();
    });

    $('#lbCod').on('click', function () {
        createChartCod();
    });
});