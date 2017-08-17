$(function () {
    $.ajax({
        type: "POST",
        url: "Customer.aspx/GetTime",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            alert(data.d);
            
            var dataset = [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
           // dataset[0] = '50';
            dataset = data.d;
            console.log(dataset);
     
            
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
                //tooltip: {
                //    valueSuffix: 'mg/l'
                //},
                //legend: {
                //    layout: 'vertical',
                //    align: 'right',
                //    verticalAlign: 'middle',
                //    borderWidth: 0
                //},
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
            options.series[0].data = dataset;
            options.series[0].name = 'COD Index';
            var chart = new Highcharts.chart(options);

        },
        error: function () { alert('False!'); }
    });
});