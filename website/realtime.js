function getRealTime() {
    var domphonetypes = document.getElementById("phonetypecount");
    var domphones = document.getElementById("phonecount");
    var domlistprice = document.getElementById("listpricetotal");
    var domwholesaleprice = document.getElementById("wholesalepricetotal");
    var request = new XMLHttpRequest();
    request.open("GET", "realtime.php", true);
    request.onreadystatechange = function() {
        if (request.readyState === 4 && request.status === 200) {
            var xmldoc = request.responseXML;
            var xmltypes = xmldoc.getElementsByTagName("phonetypes")[0];
            var types = xmltypes.childNodes[0].nodeValue;
            var xmlphones = xmldoc.getElementsByTagName("phones")[0];
            var phones = xmlphones.childNodes[0].nodeValue;
            var xmllist = xmldoc.getElementsByTagName("listpricetotal")[0];
            var listtotal = xmllist.childNodes[0].nodeValue;
            var xmlwholesale = xmldoc.getElementsByTagName("wholesalepricetotal")[0];
            var wholesaletotal = xmlwholesale.childNodes[0].nodeValue;
            domphonetypes.innerHTML = types;
            domphones.innerHTML = phones;
            domlistprice.innerHTML = listtotal;
            domwholesaleprice.innerHTML = wholesaletotal;
        }
    };
    request.send(null);
}