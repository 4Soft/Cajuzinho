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
//= require_tree .
//= require jquery
//= require bootstrap-sprockets
//= require maskedinput


var ready;
ready = function() {

  jQuery(function(){
     $("#date").mask("99/99/9999");
     $("#ej_member_cpf").mask("999.999.999-99");
     $("#ej_cnpj").mask("99.999.999/9999-99");
     $("#federation_cnpj").mask("99.999.999/9999-99");
    //  $("#person_email").mask("?@?");
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
