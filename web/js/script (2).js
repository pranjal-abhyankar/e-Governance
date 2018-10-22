function start(){	
	
};

function startF(){	
	setTimeout(function () {
		$('header').css({marginTop:-500}).stop().delay(100).animate({marginTop:0},1200,'easeOutExpo');
		$('#menu_splash .nav2').css({opacity:0}).stop().delay(200).animate({opacity:1},400,'swing');
		$('#menu_splash .nav6').css({opacity:0}).stop().delay(300).animate({opacity:1},400,'swing');
		$('#menu_splash .nav3').css({opacity:0}).stop().delay(400).animate({opacity:1},400,'swing');
		$('#menu_splash .nav5').css({opacity:0}).stop().delay(500).animate({opacity:1},400,'swing');
		$('#menu_splash .nav1').css({opacity:0}).stop().delay(600).animate({opacity:1},400,'swing');
		$('#menu_splash .nav4').css({opacity:0}).stop().delay(700).animate({opacity:1},400,'swing');
	}, 200);
};

function showSplash(){
	setTimeout(function () {
		$('.close').stop().animate({opacity:0},800,'easeOutExpo', function(){ $(this).css({display:'none'}); });
		$('.menu_splash').css({display:'block'}).stop().animate({opacity:1},800,'easeOutExpo');
		$('.lines').css({display:'block'}).stop().animate({opacity:1},800,'easeOutExpo');
		$('.menu').stop().animate({opacity:0},800,'easeOutExpo', function(){ $(this).css({display:'none'}); });
	}, 500);	
};
function hideSplash(){ 	
	$('.menu_splash').stop().animate({opacity:0},800,'easeOutExpo', function(){ $(this).css({display:'none'}); });
	$('.lines').stop().animate({opacity:0},800,'easeOutExpo', function(){ $(this).css({display:'none'}); });
	$('.menu').css({display:'block'}).stop().animate({opacity:1},800,'easeOutExpo');
	$('.close').css({display:'block'}).stop().animate({opacity:1},800,'easeOutExpo');
};
function hideSplashQ(){	
	$('.menu_splash').css({opacity:0, display:'none'});
	$('.lines').css({opacity:0, display:'none'});
	$('.menu').css({display:'block', opacity:1});
	$('.close').css({display:'block', opacity:1});	
};

///////////////////

$(document).ready(function() {
	////// sound control	
	$("#jquery_jplayer").jPlayer({
		ready: function () {
			$(this).jPlayer("setMedia", {
				mp3:"music.mp3"
			});
			//$(this).jPlayer("play");
			var click = document.ontouchstart === undefined ? 'click' : 'touchstart';
          	var kickoff = function () {
            $("#jquery_jplayer").jPlayer("play");
            document.documentElement.removeEventListener(click, kickoff, true);
         	};
          	document.documentElement.addEventListener(click, kickoff, true);
		},
		
		repeat: function(event) { // Override the default jPlayer repeat event handler				
				$(this).bind($.jPlayer.event.ended + ".jPlayer.jPlayerRepeat", function() {
					$(this).jPlayer("play");
				});			
		},
		swfPath: "js",
		cssSelectorAncestor: "#jp_container",
		supplied: "mp3",
		wmode: "window"
	});

	/////// icons
	//$(".icons li").find("a").css({opacity:0.25});
	$(".icons li a").hover(function() {
		$(this).stop().animate({marginTop:-10 }, 400, 'easeOutExpo');		    
	},function(){
	    $(this).stop().animate({marginTop:0 }, 400, 'easeOutExpo' );		   
	});

	/////// button0
	$(".button0 .over2").css({opacity:0});
	$(".button0").hover(function() {
		$(this).find(".over2").stop().animate({opacity:1 }, 400, 'easeOutExpo');		    
	},function(){
	    $(this).find(".over2").stop().animate({opacity:0 }, 400, 'easeOutExpo' );		   
	});

	/////// sound	
	$(".jp-mute, .jp-unmute").hover(function() {
		$(this).stop().animate({color:"#ffffff"}, 400, 'easeOutExpo');
	},function(){
	    $(this).stop().animate({color:"#6392ca"}, 400, 'easeOutExpo' );
	});

	/////// menu_splash
	$("#menu li").find(".pop_up").css({opacity:0});
	$("#menu li a").find("img").css({opacity:0.6});
	$("#menu li a").hover(function() {
		$(this).parent().find(".pop_up").stop().animate({opacity:1 }, 400, 'swing');	
		$(this).find("img").stop().animate({opacity:1 }, 400, 'swing');
	},function(){
	    $(this).parent().find(".pop_up").stop().animate({opacity:0 }, 100, 'swing');	
		$(this).find("img").stop().animate({opacity:0.6 }, 400, 'swing');
	});

	///////// video -home page
	$('.video1 > a').hover(function(){
		$(this).find('img').stop().animate({backgroundColor:"#b30b0b"},400);								
	}, function(){
		$(this).find('img').stop().animate({backgroundColor:"#e4e4e4"},400);								
	});

	/////// close
	$(".close span").css({opacity:0});
	$(".close").hover(function() {
		$(this).find("span").stop().animate({opacity:1 }, 400, 'easeOutExpo');		    
	},function(){
	    $(this).find("span").stop().animate({opacity:0 }, 400, 'easeOutExpo' );		   
	});

	
	
	
	

	
	
	
	
	
	
	
	// for lightbox
	$("a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'dark',social_tools:false,allow_resize: true,default_width: 500,default_height: 344});
	
	
		
 });  ////////




$(window).load(function() {
						
	
						
	// scroll
	$('.scroll-pane').jScrollPane({
		showArrows: false,
		verticalGutter: 10,
		verticalDragMinHeight: 111,
		verticalDragMaxHeight: 111
	});	
	
	
	
	//content switch	
	$('#content>ul>li').eq(0).css({'visibility':'hidden'});	
	var content = $('#content');	
	content.tabs({
        show:1,
        preFu:function(_){
    	   _.li.css({display:'none',top:-475});		   
		   $('.menu').css({display:'none',opacity:0});
		   $('.close').css({display:'none',opacity:0});
        },
        actFu:function(_){
			if(_.curr){
				_.curr.css({display:'block', top:-475}).stop().animate({top:0},800, 'easeInOutExpo');	                
			}   
			if(_.prev){
				_.prev.stop().animate({top:475},800, 'easeInOutExpo', function(){ _.prev.css({display:'none'}); });
			}
            		
			//console.log(_.pren, _.n);
			if ( (_.pren == undefined) && (_.n <= 0) ){                
                startF();
                //console.log("startF");
            }			
            if ( (_.n == 0) && (_.pren >= 0) ){
                showSplash();
                //console.log("showSplash");
            }
            if ((_.pren == 0) && (_.n>0)){
                hideSplash();
                //console.log("hideSplash");  
            }
			if ( (_.pren == undefined) && (_.n >= 1) ){
                _.pren = -1;
                hideSplashQ();
                //console.log("hideSplashQ");
            }
            //console.log("///////////////////////////");
  		}
    });
	//content switch navs
	var nav = $('.menu_splash');	
    nav.navs({
		useHash:true,
        defHash: '#!/page_SPLASH',
        hoverIn:function(li){ 
			//$('> a .over',li).stop(true).animate({top:0},400, 'easeOutExpo');
			$('> a .over',li).stop().animate({opacity:1},400, 'easeOutCubic');
			//$('.txt1',li).stop().animate({top:60},400, 'easeOutExpo');
			//$('.txt2',li).stop().animate({top:0},400, 'easeInOutExpo');
        },
        hoverOut:function(li){	
		    if (!li.hasClass('with_ul') || !li.hasClass('sfHover')) {
				//$('.txt1',li).stop().animate({top:0},400, 'easeOutExpo');
     			//$('.txt2',li).stop().animate({top:60},400, 'easeOutExpo'); 
				$('> a .over',li).stop().animate({opacity:0},400, 'easeOutCubic');
			};
        }
    })    
    .navs(function(n){	
   	    content.tabs(n);
   	});	
	//////////////////////////
	

	
	
}); /// load

////////////////

$(window).load(function() {	
	setTimeout(function () {					
  		$('.spinner').fadeOut();
		$('body').css({overflow:'inherit'});
		start();
	}, 200);	
	var qwe = setTimeout(function () {$("#jquery_jplayer").jPlayer("play");}, 2000);	
	
});