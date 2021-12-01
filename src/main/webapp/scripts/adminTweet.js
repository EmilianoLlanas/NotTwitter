$(document).ready(function() {
	
	
		
		$.ajax({
				url: "consultarTweets",
				type: 'POST',
				datatype: 'json',
				contentType: 'application/json',
				data: JSON.stringify({}),
				async: true,
				success: function(response) {
					console.log("response: %O", response)
					let  userr = response.user
					
					let tweetR= response.tweets;
					let cont=0;
					for(let tweet of tweetR)
					{
						if(tweetR[cont].userN == userr.user){
							let idd= tweetR[cont].id
							
							let tweett="<div class='card text-white bg-dark mb-3'>"
							tweett+="<div class='card-body'>"
							tweett+="<h1>"+ '@'+tweetR[cont].userN  	+"</h1>"
							tweett +="<br>"
							tweett +="<h3>"+ tweetR[cont].tweet  	+"</h3>"
							tweett += "<a href= '#' class='card-link'>"+'Responder'+ "</a>" + "<a href= '#' class='card-link'>"+'Modificar'+ "</a>" + "<a href= '"+idd+"' id='bajaTweet' class='card-link'>"+'Eliminar'+ "</a>"
							tweett+="</div>"
							tweett+="</div>"
							let body=$("#tweetss");
							body.append(tweett);
							cont++;
						}
						else
						{
							let tweett="<div class='card text-white bg-dark mb-3'>"
							tweett+="<div class='card-body'>"
							tweett+="<h1>"+ '@'+tweetR[cont].userN  	+"</h1>"
							tweett +="<br>"
							tweett +="<h3>"+ tweetR[cont].tweet  	+"</h3>"
							tweett += "<a href= '#' class='card-link'>"+'Responder'+ "</a>"
							tweett+="</div>"
							let body=$("#tweetss");
							body.append(tweett);
							cont++;
						}
						
					}
	
				},
				error: function(jqxhr, textstatus, errorthrown) {
					console.log("jqxhr:%o", jqxhr);
					console.log("textstatus:%o", textstatus);
					console.log("errorthrown:%o", errorthrown);
	
				}
			});
		
		
	/* # Validando Formulario
============================================*/
	$("#btnEnviar").click(function() {
	
	
			var user_id = $('#id');
			var reply_id = $('#reply_id');
			var tweet = $('#tweet');
			var userN=$('#user');
			
			var tweet = {
				"tweet": {
					"user_id": user_id.val(),
					"reply_id": reply_id.val(),
					"tweet": tweet.val(),
					"userN": userN.val(),
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
				
					
					let tweetR= response.tweet;
					
					
						
							
							let tweett="<div class='card text-white bg-dark mb-3'>"
							tweett+="<div class='card-body'>"
							tweett+="<h1>"+ '@'+tweetR.userN  	+"</h1>"
							tweett +="<br>"
							tweett +="<h3>"+ tweetR.tweet   	+"</h3>"
							tweett += "<a href= '#' class='card-link'>"+'Responder'+ "</a>" + "<a href= '#' class='card-link'>"+'Modificar'+ "</a>" + "<a href= '#' class='card-link'>"+'Eliminar'+ "</a>"
							tweett+="</div>"
							tweett+="</div>"
							let body=$("#tweetss");
							body.prepend(tweett);
							
						
						
					
	
				},
				error: function(jqxhr, textstatus, errorthrown) {
					console.log("jqxhr:%o", jqxhr);
					console.log("textstatus:%o", textstatus);
					console.log("errorthrown:%o", errorthrown);
	
				}
			});
		
		return false;


	});
	
	$(document).on("click", "#bajaTweet", function() {


		var idTwitt = $(this).attr('href');
		

		var tweet = {
			"tweet": {
				"id": idTwitt,

			}
		};


		var data1 = JSON.stringify(tweet);

		$.ajax({
			url: "borrarTweet",
			type: 'POST',
			datatype: 'json',
			contentType: 'application/json',
			data: data1,
			async: true,
			beforeSend:function(){
             	return confirm('¿Está seguro que quieres borrar este tweet?');
            },
			success: function(response) {
			
			let trow = $("#tweetss #"+idTwitt);
			trow.remove();
			location.reload();

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
	