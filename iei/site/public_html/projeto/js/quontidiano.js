var div = document.getElementById("container3");
var display = 0;
var timer;

function showWithDelay() {
   if (!timer) {
      div.classList.add("show");

      timer = setTimeout(function () {
         div.classList.remove("show");
         timer = null; 
      }, 5000);
   }
}





window.onload = function () {

   var chart = new CanvasJS.Chart("chartContainer", {
      backgroundColor: "#e1e7da",  
      animationEnabled: true,
      exportEnabled: true,
      title:{
         text: "Cinco Comportamentos que Mais Contribuem para a Poluição",
         fontSize: 27,
      },
      data: [{
         type: "pyramid",
         indexLabelFontSize: 18,
         valueRepresents: "area",
         showInLegend: true,
         legendText: "{indexLabel}",
         toolTipContent: "<b>{indexLabel}:</b> {y}%",
         dataPoints: [
            { y: 40, indexLabel: "Consumo Excessivo de Energia" },
            { y: 15, indexLabel: "Utilizar Veículos a Combustão" },
            { y: 10, indexLabel: "Eliminação Incorreta de Resíduos" },
            { y: 6, indexLabel: "Consumo Excessivo de Produtos Descartáveis" },
            { y: (3,5), indexLabel: "Uso de Produtos Químicos na Agricultura" },
         ]
      }]
   });

   chart.options.data[0].click = function (e) {
      showWithDelay();
   };

   

   chart.render();
   
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