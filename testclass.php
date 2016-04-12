<script>
    function remCl(id,clas) {$($(id).removeClass(clas));}
    function addCl(id,clas) {$($(id).addClass(clas));}
</script>
<a class="t1" id="t2">test123</a>
<button onclick="remCl('#t2','t1')" >remove  class</button>
<button onclick="addCl('#t2','t1')" >add  class</button>