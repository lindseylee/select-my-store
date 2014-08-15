<script language="javascript" type="text/javascript">

$( "selectsex" )
  .change(function () {
    var str = "";
    $( "sex option:selected" ).each(function() {
      str += $( this ).text() + " ";
    });
    $( "div" ).text( str );
  })
  .change();
</script>