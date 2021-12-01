$(document).ready(function() {
	
	console.log("listo");
	/* # Validando Formulario
============================================*/
	$("#btnEnviar").click(function() {
	
	
			var user_id = $('#id');
			var reply_id = $('#reply_id');
			var tweet = $('#tweet');
			
			var tweet = {
				"tweet": {
					"user_id": user_id.val(),
					"reply_id": reply_id.val(),
					"tweet": tweet.val(),
				}
			};
	
			console.log('twitt: %O', tweet);
			var data1 = JSON.stringify(tweet);
	
			$.ajax({
				url: "altaTweet",
				type: 'POST',
				datatype: 'json',
				contentType: 'application/json',
				data: data1,
				async: true,
				success: function(response) {
					console.log("response: %O", response);
					
	
				},
				error: function(jqxhr, textstatus, errorthrown) {
					console.log("jqxhr:%o", jqxhr);
					console.log("textstatus:%o", textstatus);
					console.log("errorthrown:%o", errorthrown);
	
				}
			});
		
		return false;


	});

});
	