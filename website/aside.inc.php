<style>
  aside {
     font-family: Geneva, Tahoma, sans-serif;
     font-size: 90%;
     padding: 5px;
     border-top: 1px solid #3498db;
     border-left: 1px solid #3498db;
     color: #ecf0f1;
     background-color: #2c3e50;
     float: right;
     width: 20%;
     height: 100%;
     box-shadow: -2px 0 5px rgba(0,0,0,0.1);
  }
</style>
<h1 style="color: #ecf0f1; border-bottom: 1px solid #3498db; padding-bottom: 5px;">Real-time Inventory Info</h1>
<br>
<br>
<h3>Phone Type Count: </h3><span id="phonetypecount"></span>
<br><br>
<h3>Phone Count: </h3><span id="phonecount"></span>
<br><br>
<h3>List Price Total: </h3><span id="listpricetotal"></span>
<br><br>
<h3>Wholesale Price Total: </h3><span id="wholesalepricetotal"></span>
<script src="realtime.js"></script>
<script>
    setInterval(getRealTime, 5000);
    getRealTime();
</script>