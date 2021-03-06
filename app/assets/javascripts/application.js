// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree
//= require jquery-ui-1.10.1.custom.min
//= require bootstrap.min

//= require jquery.scrollTo.min
//= require jquery.nicescroll
//= require jquery.slimscroll.min

//= require jquery.easing.min
//= require jquery.isotope

//= require jquery.customSelect.min



//= require scripts


// <script src="assets/jvector-map/jquery-jvectormap-1.2.2.min.js"></script>
// <script src="assets/jvector-map/jquery-jvectormap-us-lcc-en.js"></script>
// <script src="assets/gauge/gauge.js"></script>
// <script src="assets/easypiechart/jquery.easypiechart.js"></script>
// <script src="assets/sparkline/jquery.sparkline.js"></script>
// <script src="assets/flot-chart/jquery.flot.js"></script>
// <script src="assets/flot-chart/jquery.flot.tooltip.min.js"></script>
// <!--<script src="assets/flot-chart/jquery.flot.pie.js"></script>-->
// <script src="assets/flot-chart/jquery.flot.resize.js"></script>
// <script src="assets/flot-chart/jquery.flot.pie.resize.js"></script>
// <script src="assets/flot-chart/jquery.flot.animator.min.js"></script>
// <script src="js/dashboard.js"></script>
// <!--common script init for all pages-->
// <script src="js/scripts.js"></script>
$(document).on('ready page:change', function () {
   $(function() {
        var $container = $('#gallery');
        $container.isotope({
            itemSelector: '.item',
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
        });


        // filter items when filter link is clicked
        $('#filters a').click(function() {
            var selector = $(this).attr('data-filter');
            $container.isotope({filter: selector});
            return false;
        });
    });
});


   


