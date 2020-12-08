/********************************************************/
/********************************************************/
//Store.js
//Nov.2020
//Shopping Cart Library
//© Nov.2020 Made In India :)
/*******************************************************/
/*******************************************************/

var cart = {};

if(document.readyState == 'loading'){
    document.addEventListener('DOMContentLoaded', ready)
}else{
    ready();
}

function ready(){
	console.log('file loaded successfully !');
	var decrQuantElements = document.getElementsByClassName('decrement_quant');
	var incrQuantElements = document.getElementsByClassName('increment_quant');
	for(var i =0; i<decrQuantElements.length; i ++ ){
		var decrQuantBtn = decrQuantElements[i];
		var incrQuantBtn = incrQuantElements[i];
		decrQuantBtn.addEventListener('click', quant_decr);
		incrQuantBtn.addEventListener('click', quant_incr);
	}
	var addToCartElements = document.getElementsByClassName('btn_add_toCart');
	for(var i =0; i<addToCartElements.length; i ++ ){
		var cartItemBtn = addToCartElements[i];
		cartItemBtn.addEventListener('click', addToCart);
	}

}

function quant_incr(event){
	console.log('increment clicked !');
	var quanity = event.target.parentElement.getElementsByClassName('cart_item_quant')[0].innerText;
    // cart_item_quant
    event.target.parentElement.getElementsByClassName('cart_item_quant')[0].innerText =
     parseInt(quanity) + 1;
 
 	//update cart item price
 	//1. get single item price
 	//2. increase price for increment
 	var priceOfCartItem = 
 	event.target.parentElement.parentElement.getElementsByClassName('cart_item_total')[0].innerText;
 	priceOfCartItem = parseFloat(priceOfCartItem.replace('Rs ', ''));
 	var sinlgeItemPrice = priceOfCartItem/ (parseInt(quanity));
 	//update ItemPrice 
 	event.target.parentElement.parentElement.getElementsByClassName('cart_item_total')[0].innerText =
 	'Rs ' + (priceOfCartItem + sinlgeItemPrice).toFixed(2);
     updateCartTotal();

}

function quant_decr(event){
	console.log('dec©s©re©k©me©y©nt clicked ! ');
	var quanity = event.target.parentElement.getElementsByClassName('cart_item_quant')[0].innerText;
	
	event.target.parentElement.parentElement.getElementsByClassName('cart_item_quant')[0].innerText =
     parseInt(quanity) - 1;

     // cart_item_quant
	if((parseInt(quanity) - 1) < 1){
		//remove Cart row item
		debugger;
		event.target.parentElement.parentElement.remove();
		enableCartAddBtn(event.target.parentElement.parentElement.getAttribute('data-id'));

	}
	//update cart item price
 	//1. get single item price
 	//2. increase price for increment
 	var priceOfCartItem = 
 	event.target.parentElement.parentElement.getElementsByClassName('cart_item_total')[0].innerText;
 	priceOfCartItem = parseFloat(priceOfCartItem.replace('Rs ', ''));
 	var sinlgeItemPrice = priceOfCartItem / (parseInt(quanity));
 	//update ItemPrice 
 	event.target.parentElement.parentElement.getElementsByClassName('cart_item_total')[0].innerText =
 	'Rs ' + (priceOfCartItem - sinlgeItemPrice).toFixed(2);
	updateCartTotal();
}

function updateCartTotal(){
	//update total quantity
	var cartCountElement =  document.getElementsByClassName('cart_count')[0];
	var navCartTotalCount =  document.getElementsByClassName('cart_navBtn')[0];
	var QuantityElements = document.getElementsByClassName('cart_item_quant');

	var totalItems = 0;
	//update Total Amount
	var cartItemPriceElements = document.getElementsByClassName('cart_item_total');
	var cartTotalElement =  document.getElementsByClassName('cart_total_val')[0];
	var cartItemTotalAmnt = 0;
	try{
			for(var i =0; i < QuantityElements.length; i++){
				totalItems +=  parseInt(QuantityElements[i].innerText);
			}
			cartCountElement.innerText = totalItems;
			navCartTotalCount.setAttribute('data-value', totalItems);

			for(var i =0; i < cartItemPriceElements.length; i++){
				cartItemTotalAmnt +=  parseFloat(cartItemPriceElements[i].innerText.replace('Rs ', ''));
			}
			cartTotalElement.innerText = 'Rs ' + cartItemTotalAmnt.toFixed(2);
	}
	catch(ex){
		console.log(ex.message);
		cartTotalElement.innerText = 'Rs ' + '0.00';
	}
	//enable disable add to car btn
	if(totalItems >0){
		document.getElementsByClassName('cart_checkout')[0].classList.remove('disabled');
	}else{
		document.getElementsByClassName('cart_checkout')[0].classList.add('disabled');
	}
	updateCartInDb();
	
}

function addToCart(event){
	//
	event.target.innerText = 'Added';
	event.target.classList.add('disabled');

	var addToCartElement = event.target.parentElement;
	console.log('Clicked add to Cart Btn');
	var cartTitle = addToCartElement.getElementsByTagName('h4')[0].innerText;
	var price = addToCartElement.getElementsByClassName('cart_item_price')[0].innerText;
	const dataid = addToCartElement.getAttribute('data-id');
    
    //Check if cart already exist
    var cartItems = document.getElementsByClassName('cart_item_title');
    for(var i = 0; i < cartItems.length; i ++){
    	if(cartItems[i].innerText == cartTitle){return;}
    }

    //check validation for already added cart itme
    var dom = document.createElement('div');
    dom.classList.add("cart_item","row");
    dom.setAttribute('data-id' , dataid);
	var cartItem = `<div class="cart_detail col-lg-4">
	    					<span class="cart_item_title" >${cartTitle}</span>
		    			</div>
		    			<div class="col-lg-4 cart_quant_container">
							<button class='decrement_quant'>-</button>	
							<span class='cart_item_quant'>1</span>
							<button class='increment_quant'>+</button>    					
		    			</div>
		    			<div class="col-lg-4 ">
							<span class='cart_item_total'>${price}</span>
		    			</div>`;
	dom.innerHTML = cartItem;
    //bind event to new cart items
    var decrQuantBtn = dom.getElementsByClassName('decrement_quant')[0];
    var incrQuantBtn = dom.getElementsByClassName('increment_quant')[0];

	decrQuantBtn.addEventListener('click', quant_decr);
	incrQuantBtn.addEventListener('click', quant_incr);
    document.getElementsByClassName('cart_items')[0].append(dom);

    updateCartTotal();
}

function enableCartAddBtn(id){
   const menuItemElements = document.getElementsByClassName('menu_subitem_div');
   for(var i = 0; i < menuItemElements.length; i++ ){
      if(menuItemElements[i].getAttribute('data-id') == id){
      	const addToCartBtn = menuItemElements[i].getElementsByClassName('btn_add_toCart')[0]
      	addToCartBtn.innerText = 'Add';
	    addToCartBtn.classList.remove('disabled');
      }
   }
   updateCartTotal();
}

/****************************************************/
/****************************************************/
//Add To Cart #Checkout#
$(document).ready(function(){
   
  $('.cart_checkout').on('click', function(){
	console.log(localStorage.getItem('cart'));
	if(localStorage.getItem('cart')){
		$.ajax({
			type: 'POST',
			url: '/cart',
			data: JSON.stringify(cart),
			dataType: 'json',
			contentType: 'application/json; charset=utf-8'
		}).done(function(msg) {
			console.log("Data Saved: " + msg);
			if(msg[0]){
				alert('Order Placed Successfully. Your Food is on the way !');
				//clear cart after order is place
				clearCart();
			}
			else{
				alert('Please login to place Order!');
			}

		});
	}

  });
});
//################################################################
//Update cart in db
//###############################################################
function updateCartInDb(){
	cart.List = [];
	cart.Total=0;
	cart.QuantTotal = 0;
	cart.HotelMenuId = 0;
	
	$('.cart_item.row').each(function(elmnt){
		var cartItem ={};
		cartItem.Id = this.getAttribute('data-id');
		cartItem.ItemName = this.getElementsByClassName('cart_item_title')[0].innerText;
		cartItem.Quantity = this.getElementsByClassName('cart_item_quant')[0].innerText;
		cartItem.Total = parseFloat(this.getElementsByClassName('cart_item_total')[0].innerText.replace('Rs ', ''));
		cart.Total += cartItem.Total;
		cart.QuantTotal += parseInt(cartItem.Quantity);
		cart.List.push(cartItem);
	});
	cart.HotelMenuId = $('.hotel_name').attr('data-meneuid');
	storeCartInBrowser(cart);
}
//####################################################
function clearCart(){
	cart.List = [];
	cart.Total=0;
	cart.QuantTotal = 0;

	//clear existing row
	$('.cart_item.row').each(function(elmnt){
		this.remove();
	});
	//enable all adds
	$('.btn_add_toCart').each( function (){this.classList.remove('disabled')}); 
	updateCartTotal();
	storeCartInBrowser(cart);
}

function storeCartInBrowser(cart){
	if (typeof(Storage) !== "undefined") {
		console.log('Storing Cart For checkout..')
		localStorage.setItem('cart', JSON.stringify(cart));
	} 
	else {
		console.log('Sorry! No Web Storage support..')
	}
}

/****************************************************/
/****************************************************/