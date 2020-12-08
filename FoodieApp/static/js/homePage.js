$(document).ready(function () {
    //on button click press
	$('.search_hotel').on('click', () => {
		getHotels();
	});
	//On Enter Key Press
	$(".manualLocation").on('keyup', function (e) {
		if (e.key === 'Enter' || e.keyCode === 13) {
			getHotels();
		}
	});

	//if search value passed already get hotels as per passed location
	if($(".manualLocation").val()){
		getHotels();
	}
});
//get Hotels data using ajax
function getHotels() {
	console.log('search clicked');
	console.log('manualLocation: ' + $('.manualLocation').val());
	console.log('auto Location: ' + $('.autoLocation').val());
	var searchCity = Boolean($('.manualLocation').val()) ? $('.manualLocation').val() : $('.autoLocation').val();
	console.log('city: ' + searchCity);
	if(searchCity){
		$.ajax({
			// data:{'city': searchCity },
			url: "/findhotel/" + searchCity,
			success: function (data) {
				console.log(data);
				var result = JSON.parse(data);
				showHotels(result);
			}
		});
	}
	else{
		return;
	}
	
}

//display hotels on UI
function showHotels(data) {
	//hide search box
	$('.search_hotel_menu').css('display', 'none');
	$('.search_location_div').css('display', 'none');

	//Show Hotel Listing div
	$('.hotel_listing_div').removeClass('hidden');
	
	//Show search nav btn
	$('.search_nav_btn').removeClass('hidden');

	//Get Div
	var cardsDiv = $('.cards');
	//Get Hotels list
	var hotels = data.results;
	//Prepare and append hotel cards
	for (var i = 0; i < hotels.length; i++) {
		//Fill Data
		var card = document.createElement("div");
		card.className = "card";
		var cardTitle = document.createElement("div");
		var hotelImg = '<img src=' + '"/static/' + hotels[i][13] + '"' + ' class="hotel_img" ' + '>'
		cardTitle.className = "card_title";
		cardTitle.innerHTML = hotels[i][2];
		var cardBody = document.createElement("div");
		cardBody.className = "card_body";
		cardBody.innerHTML = '<span> ' + hotels[i][4] + '</span>';
		console.log(hotels[i][13]);
		//Append Div
		$(cardsDiv).append($(card).append(hotelImg).append(cardTitle).append(cardBody).append("<a href='/gethotel/" + hotels[i][1] + "' class='hotel_menu'>menu items</a>"));
	}

}