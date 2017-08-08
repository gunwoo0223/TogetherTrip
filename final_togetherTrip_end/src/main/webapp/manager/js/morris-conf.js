var Script = function () {

    //morris chart

    $(function () {
      // data stolen from http://howmanyleft.co.uk/vehicle/jaguar_'e'_type
      var tax_data = [
           {"period": "2017 Q3", "licensed": 72},
           {"period": "2017 Q2", "licensed": 45},
           {"period": "2017 Q1", "licensed": 43},
           {"period": "2016 Q3", "licensed": 32},
           {"period": "2016 Q2", "licensed": 13},
           {"period": "2016 Q1", "licensed": 11},
           {"period": "2015 Q3", "licensed": 10},
           {"period": "2015 Q2", "licensed": 5},
           {"period": "2015 Q1", "licensed": 3}
      ];
      Morris.Line({
        element: 'hero-graph',
        data: tax_data,
        xkey: 'period',
        ykeys: ['licensed'],
        labels: ['Licensed'],
        lineColors:['#4ECDC4']
      });

      Morris.Donut({
        element: 'hero-donut',
        data: [
          {label: '명소', value: 25 },
          {label: '맛집', value: 40 },
          {label: '축제', value: 25 },
          {label: '숙박', value: 10 }
        ],
          colors: ['#3498db', '#2980b9', '#34495e'],
        formatter: function (y) { return y + "%" }
      });

      Morris.Area({
        element: 'hero-area',
        data: [
          {period: '2015 Q1', 남: 7, 여: null},
          {period: '2015 Q2', 남: 7, 여: 5},
          {period: '2015 Q3', 남: 12, 여: 5},
          {period: '2015 Q4', 남: 9, 여: 8},
          {period: '2016 Q1', 남: 17, 여: 5},
          {period: '2016 Q2', 남: 14, 여: 10},
          {period: '2016 Q3', 남: 12, 여: 9},
          {period: '2016 Q4', 남: 15, 여: 11},
          {period: '2017 Q1', 남: 18, 여: 13},
          {period: '2017 Q2', 남: 29, 여: 14}
        ],

          xkey: 'period',
          ykeys: ['남', '여'],
          labels: ['남', '여'],
          hideHover: 'auto',
          lineWidth: 1,
          pointSize: 5,
          lineColors: ['#4a8bc2', '#ff6c60'],
          fillOpacity: 0.5,
          smooth: true
      });

      Morris.Bar({
        element: 'hero-bar',
        data: [
          {device: '명소', geekbench: 136},
          {device: '맛집', geekbench: 137},
          {device: '숙박', geekbench: 275},
          {device: '축제', geekbench: 380},
          {device: '여행후기', geekbench: 655},
        ],
        xkey: 'device',
        ykeys: ['geekbench'],
        labels: ['Geekbench'],
        barRatio: 0.4,
        xLabelAngle: 35,
        hideHover: 'auto',
        barColors: ['#ac92ec']
      });

      new Morris.Line({
        element: 'examplefirst',
        xkey: 'year',
        ykeys: ['value'],
        labels: ['Value'],
        data: [
          {year: '2008', value: 20},
          {year: '2009', value: 10},
          {year: '2010', value: 5},
          {year: '2011', value: 5},
          {year: '2012', value: 20}
        ]
      });

      $('.code-example').each(function (index, el) {
        eval($(el).text());
      });
    });

}();




