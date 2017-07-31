var btn =document.getElementByID("btn-btn-default");
if (btn) {
  btn.addEventListener("click" , function() {
    var ourRequest = new XMLHttpRequest();
    ourRequest.open('GET','/assets/quotes.json');
    ourRequest.onload=function(){
          var data=JSON.parse(ourRequest.responseText);
          console.log(data[1]);
        };
        ourRequest.send();
  });

}
