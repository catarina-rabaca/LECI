let sections = document.querySelectorAll("section");

window.onscroll = () => {
   sections.forEach(sec => {
      let top = window.scrollY;
      let offset = sec.offsetTop - 300;
      let height = sec.offsetHeight;

      if (top >= offset && top < offset + height) {
         sec.classList.add("mostrar-ani");
      
      }

      else {
         sec.classList.remove("mostrar-ani");

      }
   })
}

google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['CO2',     66],
          ['CH4',      16],
          ['N2O',       7],
          ['CFCs',   8],
          ['HFCs+',    1]
        ]);

        var options = {
          title: 'Gases reponsáveis pelo efeito de estufa',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('gases-efeito-estufa'));
        chart.draw(data, options);

        document.getElementById('legenda-grafico').innerHTML = 'Fig. 3.1: Contribuições dos gases de efeito de estufa mais importantes desde a era pré-industrial até 2020 (<i>Fonte: WMO Greenhouse Gas Bulletin No.17</i>)';

      }
