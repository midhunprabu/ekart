<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
@import url(http://fonts.googleapis.com/css?family=Raleway:400,700);
*, *:before, *:after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}


.fullwidth {
  width: 100%;
  padding-top: 4rem;
 /*  background-color: #d9d9d9; */
}

.gallery {
  width:100%;
max-width:50em;
  margin-right: 20em;
  margin-left: 20em;
  padding-right: 2rem;
  padding-bottom: 4rem;
  padding-left: 2rem;
}

.gallery .item {
  width: 100%;
  padding-top: 2rem;
  padding-bottom: 2rem;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
      -ms-flex-direction: row;
          flex-direction: row;
  -webkit-box-pack: start;
      -ms-flex-pack: start;
          justify-content: flex-start;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
}
@media (max-width: 40rem) {
  .gallery .item {
    padding-top: 4rem;
    padding-bottom: 4rem;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
        -ms-flex-direction: column;
            flex-direction: column;
    text-align: center;
  }
}
.gallery .item:nth-child(even) {
  -webkit-box-pack: end;
      -ms-flex-pack: end;
          justify-content: flex-end;
}
.gallery .item:nth-child(even) .img-wrap {
  -webkit-box-ordinal-group: 3;
      -ms-flex-order: 2;
          order: 2;
}
@media (max-width: 40rem) {
  .gallery .item:nth-child(even) .img-wrap {
    -webkit-box-ordinal-group: 1;
        -ms-flex-order: 0;
            order: 0;
  }
}
.gallery .item:nth-child(even) caption {
  -webkit-box-ordinal-group: 2;
      -ms-flex-order: 1;
          order: 1;
}
@media (max-width: 40rem) {
  .gallery .item:nth-child(even) caption {
    -webkit-box-ordinal-group: 1;
        -ms-flex-order: 0;
            order: 0;
  }
}

.gallery .item .img-wrap {
  position: relative;
  padding: 0.8rem;
  width: 50%;
  -ms-flex-preferred-size: 50%;
      flex-basis: 50%;
  border-radius: 50%;
}
@media (max-width: 40rem) {
  .gallery .item .img-wrap {
    width: 80%;
    -ms-flex-preferred-size: 80%;
        flex-basis: 80%;
  }
}
.gallery .item .img-wrap:before, .gallery .item .img-wrap:after {
  content: '';
  position: absolute;
  border-radius: 50%;
  -webkit-transform: rotate(-90deg);
          transform: rotate(-90deg);
}
.gallery .item .img-wrap:before {
  top: 1px;
  right: 1px;
  bottom: 1px;
  left: 1px;
  border-top: 1px solid #D4AF37;
  border-right: 1px solid transparent;
  border-bottom: 1px solid #D4AF37;
  border-left: 1px solid transparent;
}
.gallery .item .img-wrap:after {
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  border-top: 3px solid #d9d9d9;
  border-right: 3px solid transparent;
  border-bottom: 3px solid #d9d9d9;
  border-left: 3px solid transparent;
  -webkit-transition: -webkit-transform 0.5s;
  transition: -webkit-transform 0.5s;
  transition: transform 0.5s;
  transition: transform 0.5s, -webkit-transform 0.5s;
}
.gallery .item .img-wrap img {
  display: block;
  width: 100%;
  height: auto;
  padding: 1.5rem;
  border-radius: 50%;
  background-color: #e6e6e6;
  background-image: -webkit-radial-gradient(#e6e6e6, #cccccc 80%);
  background-image: radial-gradient(#e6e6e6, #cccccc 80%);
  background-size: 130% 130%;
  background-position: 0 0;
  background-repeat: no-repeat;
  box-shadow: inset 2px 2px 5px #b3b3b3, 2px 2px 15px #e6e6e6, inset 15px 15px 50px rgba(0, 0, 0, 0.1);
}

.gallery .item:hover .img-wrap:after {
  -webkit-transform: rotate(0deg);
          transform: rotate(0deg);
}

.gallery .item:nth-child(1) .img-wrap,
.gallery .item:nth-child(5) .img-wrap {
  width: 30%;
  -ms-flex-preferred-size: 30%;
      flex-basis: 30%;
}
@media (max-width: 40rem) {
  .gallery .item:nth-child(1) .img-wrap,
  .gallery .item:nth-child(5) .img-wrap {
    width: 60%;
    -ms-flex-preferred-size: 60%;
        flex-basis: 60%;
  }
}

.gallery .item:nth-child(2) .img-wrap,
.gallery .item:nth-child(4) .img-wrap {
  width: 40%;
  -ms-flex-preferred-size: 40%;
      flex-basis: 40%;
}
@media (max-width: 40rem) {
  .gallery .item:nth-child(2) .img-wrap,
  .gallery .item:nth-child(4) .img-wrap {
    width: 70%;
    -ms-flex-preferred-size: 70%;
        flex-basis: 70%;
  }
}

.gallery .item .caption {
  padding-right: 1rem;
  padding-left: 1rem;
  position: relative;
  color: #999999;
}
@media (max-width: 40rem) {
  .gallery .item .caption {
    padding-top: 1rem;
  }
}
.gallery .item .caption h3 {
  position: relative;
  margin-bottom: 1rem;
  font-weight: 400;
  font-size: 1rem;
  text-transform: uppercase;
  letter-spacing: 1px;
}
.gallery .item .caption a {
  display: inline-block;
  position: relative;
  padding: 0.3rem 1rem;
  color: inherit;
  text-decoration: none;
  border: 1px solid #b3b3b3;
  border-radius: 3px;
}
.gallery .item .caption .btn-buy {
  margin-right: 1rem;
  color: #D4AF37;
  border: 1px solid #D4AF37;
  letter-spacing: 1px;
}


</style>


<div class="fullwidth">
  
  <div class="gallery">
    <c:forEach items="${productList}" var="product">
    <figure class="item">
      <div class="img-wrap"><img src="resources/images/product/${product.productid}.jpg" alt="" /></div>
      <figcaption class="caption">
          <h3>${product.productname}<br/>${product.brand}<br>${product.price}</h3>
          		<div class="rw-ui-container">
						<span class="rating">
        <input type="radio" class="rating-input"
    id="rating-input-1-5" name="${product.productid}"/>
        <label for="rating-input-1-5" class="rating-star"></label>
        <input type="radio" class="rating-input"
                id="rating-input-1-4" name="${product.productid}"/>
        <label for="rating-input-1-4" class="rating-star"></label>
        <input type="radio" class="rating-input"
                id="rating-input-1-3" name="${product.productid}"/>
        <label for="rating-input-1-3" class="rating-star"></label>
        <input type="radio" class="rating-input"
                id="rating-input-1-2" name="${product.productid}"/>
        <label for="rating-input-1-2" class="rating-star"></label>
        <input type="radio" class="rating-input"
                id="rating-input-1-1" name="${product.productid}"/>
        <label for="rating-input-1-1" class="rating-star"></label>
</span>
</div>
<br>

          <a class="btn-details" href="productdescriptionPage?productid=${product.productid}">See details</a>
      </figcaption>
    </figure>
     </c:forEach>

     </div>
  
</div>
    	<script type="text/javascript">(function(d, t, e, m){
    
    // Async Rating-Widget initialization.
    window.RW_Async_Init = function(){
                
        RW.init({
            huid: "362278", 
            uid: "f45617fc6bd4707a00abef64d6775e19",
            options: { "style": "oxygen" } 
        });
        RW.render();
    };
        // Append Rating-Widget JavaScript library.
    var rw, s = d.getElementsByTagName(e)[0], id = "rw-js",
        l = d.location, ck = "Y" + t.getFullYear() + 
        "M" + t.getMonth() + "D" + t.getDate(), p = l.protocol,
        f = ((l.search.indexOf("DBG=") > -1) ? "" : ".min"),
        a = ("https:" == p ? "secure." + m + "js/" : "js." + m);
    if (d.getElementById(id)) return;              
    rw = d.createElement(e);
    rw.id = id; rw.async = true; rw.type = "text/javascript";
    rw.src = p + "//" + a + "external" + f + ".js?ck=" + ck;
    s.parentNode.insertBefore(rw, s);
    }(document, new Date(), "script", "rating-widget.com/"));</script>
   
</html>