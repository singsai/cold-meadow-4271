$(document).ready(function(){

	$('.carousel').carousel({
	    interval: 3000
	})

	 // $('#tabs div').hide();
		// $('#tabs div:first').show();
		// $('#tabs ul li:first').addClass('active');
		 
		// $('#icons a').click(function(){
		// 	$('#icons a').removeClass('active');
		// 	$(this).parent().addClass('active');
		// 	var currentTab = $(this).attr('href');
		// 	$('#tabs div').hide();
		// 	$(currentTab).show();
		// 	return false;
		// });


	var tabContainers = $('div#tabs > div');
	tabContainers.filter(':first').addClass('active');
	var tabAnchors = $('div#icons a');
	tabAnchors.filter(':first').addClass('active');
	
	tabAnchors.click(function() {
		tabContainers.removeClass('active');
		tabAnchors.removeClass('active');
		 $(this).toggleClass('active', 500);

		var currentTab = $(this).attr('href');
		
		$('#' + currentTab).toggleClass('active', 1000);
		return false;

	})

	 // setInterval(function() {
  //       var big = $('div#tabs > div.active');
  //       var little = $('div#icons a.active');
  //       var nextbig;
  //       var nextlittle;
  //       if (little.is(":last-child")) 
  //       	{
  //       		nextlittle = $('#div#icons a:first-child');
  //       	}
  //       	else {
  //       		nextlittle = little.next();
  //       	}
        		 
  //       if (big.is(":last-child"))
  //       {
  //       	 nextbig = $('div#tabs div:first-child');
  //       }
  //       else 
  //       	{
  //       		nextbig = big.next();
  //       	}

  //       little.removeClass('active');
  //       nextlittle.addClass('active');	
  //       big.removeClass('active');
  //       nextbig.addClass('active');
  //   }, 2000);

	// var varCounter = 0;
	// var vcycle = function()
	// {
	//      if(varCounter < 4) 
	//      {
	//         varCounter++;
	//         var big = $('div#tabs > div.active');
	//         var little = $('div#icons a.active');
	//         var nextbig;
	//         var nextlittle;
 //        	if (little.is(":last-child")) 
 //        	{
 //        		nextlittle = $('#div#icons a:first-child');
 //        	}
 //        	else {
 //        		nextlittle = little.next();
 //        	}
        		 
	//         if (big.is(":last-child"))
	//         {
	//         	 nextbig = $('div#tabs div:first-child');
	//         }
	//         else 
 //        	{
 //        		nextbig = big.next();
 //        	}

 //        little.removeClass('active');
 //        nextlittle.addClass('active');	
 //        big.removeClass('active');
 //        nextbig.addClass('active');
	//      } 
	//      else 
	//      {
	//           clearInterval(vcycle);
	//           // remove all active
	//           $('#div#icons a').removeClass('active');
	//           $('div#tabs > div').removeClass('active');
			 
	// 		  // set first to active
	//           $('a#s-icon').addClass('active');
	//           // $('#div#icons a:first-child').addClass('active');
	//           $('div#tabs div:first-child').addClass('active');
	//      }
	// };
	// setInterval(vcycle, 1500);


// 	$('#tabs div').hide();
// $('#tabs div:first').show();
// $('#tabs ul li:first').addClass('active');
 
// $('#tabs ul li a').click(function(){
// $('#tabs ul li').removeClass('active');
// $(this).addClass('active');
// var currentTab = $(this).attr('href');
// $('#tabs div').hide();
// $(currentTab).addClass('active');
// return false;
// });


		// tabContainers.removeClass('active');
		// tabAnchors.removeClass('active');
		// tabContainers.filter(this.hash).addClass('active');
		// tabAnchors.filter(this.hash).addClass('active');
		// 	
		// 	}).filter(':first').click();
});