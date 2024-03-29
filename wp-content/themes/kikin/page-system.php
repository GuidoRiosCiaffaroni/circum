<?php get_header(); ?>
<?php get_template_part( 'system_menu' ); ?>

      <div class="panel-header panel-header-lg">
      <!-- --------------------------------------------------------------------------------------------------------- -->
        

        <!-- <canvas id="bigDashboardChart"></canvas>  -->
        <!-- <div id="chartContainer" style="height: 270px; max-width: 920px; margin: 0px auto;"></div> -->
        <div id="chartContainer" style="height: 270px; max-width: 0px auto; margin: 0px auto;"></div> 
        
      </div>
      <!-- --------------------------------------------------------------------------------------------------------- -->

      <!-- --------------------------------------------------------------------------------------------------------- -->
<script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
  animationEnabled: true,
  theme: "dark2",
  backgroundColor: "transparent",
  title:{
    text: "Rentabilidad"
  },
  axisX:{
    valueFormatString: "DD MMM YY",
    crosshair: {
      enabled: true,
      snapToDataPoint: true
    }
  },
  axisY: {
    title: "Rentabilidad %",
    crosshair: {
      enabled: true
    }
  },
  toolTip:{
    shared:true
  },  
  legend:{
    cursor:"pointer",
    verticalAlign: "bottom",
    horizontalAlign: "left",
    dockInsidePlotArea: true,
    itemclick: toogleDataSeries
  },
  data: [{
    type: "line",
    showInLegend: true,
    name: "Rentabilidad",
    markerType: "square",
    xValueFormatString: "DD MMM, YY",
    color: "#FFFFFF",
    dataPoints: [
      { x: new Date(2022, 0, 1), y: 4 },
      { x: new Date(2022, 1, 1), y: 5 },
      { x: new Date(2022, 2, 1), y: 4 },
      { x: new Date(2022, 3, 1), y: 5 },
      { x: new Date(2022, 4, 1), y: 3 },
      { x: new Date(2022, 5, 1), y: 5 },
      { x: new Date(2022, 6, 1), y: 5 },
      { x: new Date(2022, 7, 1), y: 5 },
      { x: new Date(2022, 8, 1), y: 5 },
      { x: new Date(2022, 9, 1), y: 5 },
      { x: new Date(2022, 10, 1), y: 5.7 }
    ]
  },
  {
    type: "line",
    showInLegend: true,
    name: "Rentabilidad Esperada",
    lineDashType: "dash",
    dataPoints: [
      { x: new Date(2022, 0, 1), y: 3 },
      { x: new Date(2022, 1, 1), y: 2 },
      { x: new Date(2022, 2, 1), y: 2.1 },
      { x: new Date(2022, 3, 1), y: 2.2 },
      { x: new Date(2022, 4, 1), y: 3.1 },
      { x: new Date(2022, 5, 1), y: 4 },
      { x: new Date(2022, 6, 1), y: 5 },
      { x: new Date(2022, 7, 1), y: 6 },
      { x: new Date(2022, 8, 1), y: 1 },
      { x: new Date(2022, 9, 1), y: 2.5 },
      { x: new Date(2022, 10, 1), y: 2 }
    ]
  }]
});
chart.render();

function toogleDataSeries(e){
  if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
    e.dataSeries.visible = false;
  } else{
    e.dataSeries.visible = true;
  }
  chart.render();
}

}
</script>

      <!-- --------------------------------------------------------------------------------------------------------- -->



      <div class="content">

        <div class="row">
          <!-- ----------------------------------------------------------------------------- -->
          <div class="col-lg-4">
            <div class="card  card-tasks">


              

              <div class="card-header ">
                <h5 class="card-category">Empresas en Estudio</h5>
                <h4 class="card-title">Estudio</h4>





              </div>





              <div class="card-body ">
            
            <div class="table-full-width table-responsive">
              <iframe src="https://docs.google.com/spreadsheets/d/1W4QSGQU9c1Gy5gTkrXG7sfHum7qA6IKBzMswpM8EfQ0/gviz/tq?tqx=out:html&gid=0" frameborder="0" scrolling="no" width="450" height="450"></iframe>
             </div>
              </div>



              <div class="card-footer ">
                <hr>
                <div class="stats">
                  <i class="now-ui-icons loader_refresh spin"></i> Updated 60 minutes ago
                </div>
              </div>
            </div>
          </div>
          <!-- ----------------------------------------------------------------------------- -->

          <!-- ----------------------------------------------------------------------------- -->
          <div class="col-lg-4 col-md-6">
                        <div class="card  card-tasks">
              <div class="card-header ">
                <h5 class="card-category">Seguimiento</h5>
                <h4 class="card-title">Seguimiento NOC</h4>
              </div>
              <div class="card-body ">
                <div class="table-full-width table-responsive">
          <iframe width="450" height="400" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTpbgD9LUuK_7Jta-4YpsUMJSYMVqTPUNxhhLr1YdAlgoR-glCaJbDFFffUuXxatemmiAyvMvrUFay8/pubchart?oid=380018313&amp;format=interactive"></iframe>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  <i class="now-ui-icons loader_refresh spin"></i> Updated 24 hours ago
                </div>
              </div>
            </div>
          </div>
          <!-- ----------------------------------------------------------------------------- -->
          
          <!-- ----------------------------------------------------------------------------- -->          
          <div class="col-lg-4 col-md-6">
                        <div class="card  card-tasks">
              <div class="card-header ">
                <h5 class="card-category">Datos de estudio</h5>
                <h4 class="card-title">Variaciones de registros</h4>
              </div>
              <div class="card-body ">
                <div class="table-full-width table-responsive">
                  <iframe src="https://docs.google.com/spreadsheets/d/1W4QSGQU9c1Gy5gTkrXG7sfHum7qA6IKBzMswpM8EfQ0/gviz/tq?tqx=out:html&gid=285399633" frameborder="0" scrolling="no" width="450" height="450" ></iframe>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  <i class="now-ui-icons loader_refresh spin"></i> Updated 20 minutes ago
                </div>
              </div>
            </div>
          </div>
          <!-- ----------------------------------------------------------------------------- -->


          <!-- ----------------------------------------------------------------------------- -->          
          <div class="col-lg-12 col-md-12">
                        <div class="card  card-tasks">
              <div class="card-header ">
                <h5 class="card-category">Backend development</h5>
                <h4 class="card-title">Tasks</h4>
              </div>
              <div class="card-body ">
                <div class="table-full-width table-responsive">
    

<iframe src="https://docs.google.com/spreadsheets/d/1W4QSGQU9c1Gy5gTkrXG7sfHum7qA6IKBzMswpM8EfQ0/gviz/tq?tqx=out:html&gid=504304078"  frameborder="0" scrolling="no"  width="1550" height="400"></iframe>


                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  <i class="now-ui-icons loader_refresh spin"></i> Updated 20 minutes ago
                </div>
              </div>
            </div>
          </div>
          <!-- ----------------------------------------------------------------------------- -->







        </div>






      </div>

 <?php get_template_part( 'system_footer' ); ?>