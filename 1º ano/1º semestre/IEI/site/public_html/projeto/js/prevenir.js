window.onload = function () {

   var chart = new CanvasJS.Chart("chartContainer", {
      animationEnabled: true,
      theme: "light2", //"light1", "dark1", "dark2"
      title:{
         text: "Ações que podemos tomar: Acessíveis a Todos, Muitos, Alguns",
         fontSize: 26
      },
      data: [{
         type: "funnel",
         indexLabelPlacement: "inside",
         indexLabelFontColor: "white",
         toolTipContent: "<b>{label}</b>: {y} <b>({percentage}%)</b>",
         indexLabel: "{label} ({percentage}%)",
         legendText: "{label}",
         dataPoints: [
            { y: 100, label: "Desligar luzes e aparelhos quando não estiverem em uso." },
            { y: 55, label: "Utilizar eletrodomésticos de classe A" },
            { y: 21, label: "Instalar isolamento térmico em casa" },
            { y: 19,  label: "Instalar painéis solares residenciais" },
            { y: 1, label: "Comprar veículos elétricos" },
         ]
      }]
   });
   calculatePercentage();
   chart.render();
   
   function calculatePercentage() {
      var dataPoint = chart.options.data[0].dataPoints;
      var total = dataPoint[0].y;
      for(var i = 0; i < dataPoint.length; i++) {
         if(i == 0) {
            chart.options.data[0].dataPoints[i].percentage = 100;
         } else {
            chart.options.data[0].dataPoints[i].percentage = ((dataPoint[i].y / total) * 100).toFixed(2);
         }
      }
   }
   
   }

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