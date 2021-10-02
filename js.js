
var swatch_size = parseInt($('#add-item-form .select-swatch').children().size());
jQuery(document).on('click','#add-item-form .swatch input', function(e) {  
	e.preventDefault();
	var $this = $(this);
	var _available = '';
	$this.parent().siblings().find('label').removeClass('sd');
	$this.next().addClass('sd');
	var name = $this.attr('name');
	var value = $this.val();
	$('#add-item-form select[data-option='+name+']').val(value).trigger('change');
	if(swatch_size == 2){
		if(name.indexOf('1') != -1){
			$('#add-item-form #variant-swatch-1 .swatch-element').find('input').prop('disabled', false);
			$('#add-item-form #variant-swatch-2 .swatch-element').find('input').prop('disabled', false);
			$('#add-item-form #variant-swatch-1 .swatch-element label').removeClass('sd');
			$('#add-item-form #variant-swatch-1 .swatch-element').removeClass('soldout');
			$('#add-item-form .selector-wrapper .single-option-selector').eq(1).find('option').each(function(){
				var _tam = $(this).val();
				$(this).parent().val(_tam).trigger('change');
				if(check_variant){
					if(_available == '' ){
						_available = _tam;
					}
				}else{
					$('#add-item-form #variant-swatch-1 .swatch-element[data-value="'+_tam+'"]').addClass('soldout');
					$('#add-item-form #variant-swatch-1 .swatch-element[data-value="'+_tam+'"]').find('input').prop('disabled', true);
				}
			})
			$('#add-item-form .selector-wrapper .single-option-selector').eq(1).val(_available).trigger('change');
			$('#add-item-form #variant-swatch-1 .swatch-element[data-value="'+_available+'"] label').addClass('sd');
		}
	}
	else if (swatch_size == 3){
		var _count_op2 = $('#add-item-form #variant-swatch-1 .swatch-element').size();
		var _count_op3 = $('#add-item-form #variant-swatch-2 .swatch-element').size();
		if(name.indexOf('1') != -1){
			$('#add-item-form #variant-swatch-1 .swatch-element').find('input').prop('disabled', false);
			$('#add-item-form #variant-swatch-2 .swatch-element').find('input').prop('disabled', false);
			$('#add-item-form #variant-swatch-1 .swatch-element label').removeClass('sd');
			$('#add-item-form #variant-swatch-1 .swatch-element').removeClass('soldout');
			$('#add-item-form #variant-swatch-2 .swatch-element label').removeClass('sd');
			$('#add-item-form #variant-swatch-2 .swatch-element').removeClass('soldout');
			var _avi_op1 = '';
			var _avi_op2 = '';
			$('#add-item-form #variant-swatch-1 .swatch-element').each(function(ind,value){
				var _key = $(this).data('value');
				var _unavi = 0;
				$('#add-item-form .single-option-selector').eq(1).val(_key).change();
				$('#add-item-form #variant-swatch-2 .swatch-element label').removeClass('sd');
				$('#add-item-form #variant-swatch-2 .swatch-element').removeClass('soldout');
				$('#add-item-form #variant-swatch-2 .swatch-element').find('input').prop('disabled', false);
				$('#add-item-form #variant-swatch-2 .swatch-element').each(function(i,v){
					var _val = $(this).data('value');
					$('#add-item-form .single-option-selector').eq(2).val(_val).change();
					if(check_variant == true){
						if(_avi_op1 == ''){
							_avi_op1 = _key;
						}
						if(_avi_op2 == ''){
							_avi_op2 = _val;
						}
						//console.log(_avi_op1 + ' -- ' + _avi_op2)
					}else{
						_unavi += 1;
					}
				})
				if(_unavi == _count_op3){
					$('#add-item-form #variant-swatch-1 .swatch-element[data-value = "'+_key+'"]').addClass('soldout');
					setTimeout(function(){
						$('#add-item-form #variant-swatch-1 .swatch-element[data-value = "'+_key+'"] input').attr('disabled','disabled');
					})
				}
			})
			$('#add-item-form #variant-swatch-1 .swatch-element[data-value="'+_avi_op1+'"] input').click();
		}
		else if(name.indexOf('2') != -1){
			$('#add-item-form #variant-swatch-2 .swatch-element label').removeClass('sd');
			$('#add-item-form #variant-swatch-2 .swatch-element').removeClass('soldout');
			$('#add-item-form #variant-swatch-2 .swatch-element').find('input').prop('disabled', false);
			$('#add-item-form .selector-wrapper .single-option-selector').eq(2).find('option').each(function(){
				var _tam = $(this).val();
				$(this).parent().val(_tam).trigger('change');
				if(check_variant){
					if(_available == '' ){
						_available = _tam;
					}
				}else{
					$('#add-item-form #variant-swatch-2 .swatch-element[data-value="'+_tam+'"]').addClass('soldout');
					$('#add-item-form #variant-swatch-2 .swatch-element[data-value="'+_tam+'"]').find('input').prop('disabled', true);
				}
			})
			$('#add-item-form .selector-wrapper .single-option-selector').eq(2).val(_available).trigger('change');
			$('#add-item-form #variant-swatch-2 .swatch-element[data-value="'+_available+'"] label').addClass('sd');
		}
	}
	else{

	}
})
$(document).ready(function(){
	var _chage = '';
	$('#add-item-form .swatch-element[data-value="'+$('#add-item-form .selector-wrapper .single-option-selector').eq(0).val()+'"]').find('input').click();
	$('#add-item-form .swatch-element[data-value="'+$('#add-item-form .selector-wrapper .single-option-selector').eq(1).val()+'"]').find('input').click();
	if(swatch_size == 2){
		var _avi_op1 = '';
		var _avi_op2 = '';
		var _count = $('#add-item-form #variant-swatch-1 .swatch-element').size();
		$('#add-item-form #variant-swatch-0 .swatch-element').each(function(ind,value){
			var _key = $(this).data('value');
			var _unavi = 0;
			$('#add-item-form .single-option-selector').eq(0).val(_key).change();
			$('#add-item-form #variant-swatch-1 .swatch-element').each(function(i,v){
				var _val = $(this).data('value');
				$('#add-item-form .single-option-selector').eq(1).val(_val).change();
				if(check_variant == true){
					if(_avi_op1 == ''){
						_avi_op1 = _key;
					}
					if(_avi_op2 == ''){
						_avi_op2 = _val;
					}
				}else{
					_unavi += 1;
				}
			})
			if(_unavi == _count){
				$('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_key+'"]').addClass('soldout');
				$('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_key+'"]').find('input').attr('disabled','disabled');
			}
		})
		$('#add-item-form #variant-swatch-1 .swatch-element[data-value = "'+_avi_op2+'"] input').click();
		$('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_avi_op1+'"] input').click();
	}
	else if(swatch_size == 3){
		var _avi_op1 = '';
		var _avi_op2 = '';
		var _avi_op3 = '';
		var _size_op2 = $('#add-item-form #variant-swatch-1 .swatch-element').size();
		var _size_op3 = $('#add-item-form #variant-swatch-2 .swatch-element').size();

		$('#add-item-form #variant-swatch-0 .swatch-element').each(function(ind,value){
			var _key_va1 = $(this).data('value');
			var _count_unavi = 0;
			$('#add-item-form .single-option-selector').eq(0).val(_key_va1).change();
			$('#add-item-form #variant-swatch-1 .swatch-element').each(function(i,v){
				var _key_va2 = $(this).data('value');
				var _unavi_2 = 0;
				$('#add-item-form .single-option-selector').eq(1).val(_key_va2).change();
				$('#add-item-form #variant-swatch-2 .swatch-element').each(function(j,z){
					var _key_va3 = $(this).data('value');
					$('#add-item-form .single-option-selector').eq(2).val(_key_va3).change();
					if(check_variant == true){
						if(_avi_op1 == ''){
							_avi_op1 = _key_va1;
						}
						if(_avi_op2 == ''){
							_avi_op2 = _key_va2;
						}
						if(_avi_op3 == ''){
							_avi_op3 = _key_va3;
						}
					}else{
						_unavi_2 += 1;
					}
				})
				if(_unavi_2 == _size_op3){
					_count_unavi += 1;
				}
			})
			if(_size_op2 == _count_unavi){
				$('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_key_va1+'"]').addClass('soldout');
				$('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_key_va1+'"]').find('input').attr('disabled','disabled');
			}
		})
		$('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_avi_op1+'"] input').click();
	}
});

$(document).ready(function(){
	var vl = $('#add-item-form .swatch .color input').val();
	$('#add-item-form .swatch .color input').parents(".swatch").find(".header span").html(vl);
	$("#add-item-form .select-swap .color" ).hover(function() { 
		var value = $( this ).data("value");
		$(this).parents(".swatch").find(".header span").html( value );
	},function(){
		var value = $("#add-item-form .select-swap .color label.sd span").html();
		$(this).parents(".swatch").find(".header span").html( value );
	});
});


$(".product-gallery__thumb img").click(function(){
	$(".product-gallery__thumb").removeClass('active');
	$(this).parents('.product-gallery__thumb').addClass('active');
	var img_thumb = $(this).data('image');
	var total_index =  $(this).parents('.product-gallery__thumb').index() + 1;
	$(".gallery-index .current").html(total_index);
	
	 $(".product-image-detail .product-image-feature").attr("src",$(this).attr("data-image"));
		

		});
$(".product-gallery__thumb").first().addClass('active');
		var check_variant = true;
		var fIndex = false;
		var selectCallback = function(variant, selector) {
			if (variant){
				if(variant.featured_image != null) {
					if ($(window).width()> 991){
						 $(".product-gallery__thumb a img[data-image='"+Haravan.resizeImage(variant.featured_image.src,'master').replace('https:','')+"']").click().parents('.product-gallery__thumb').addClass('active');
							} 
							else {
								setTimeout(function(){
									var indexVariant = $(".product-gallery-item img[src='"+Haravan.resizeImage(variant.featured_image.src,'master').replace('https:','')+"']").parent().index();
									$("#sliderproduct").flickity('select', indexVariant);
									$('#sliderproduct').flickity({
										resize:true,
										draggable: true,
										prevNextButtons: true,
									});
								},500);
							}
						 }

						 if (variant.sku != null ){
							 jQuery('#pro_sku').html('SKU: ' +variant.sku);
						 }

						 if ( variant.available) {
							 jQuery('#detail-product .add-to-cartProduct').removeAttr('disabled').removeClass('disabled').html("<span>Thêm vào giỏ</span>");

							 jQuery('#detail-product #buy-now').removeAttr('disabled').removeClass('disabled').html("<span>Mua ngay</span>").show();
							 jQuery('#detail-product .pro-soldold').addClass('hidden');
							 check_variant = true;
						 } 
						 else {
							 jQuery('#detail-product .add-to-cartProduct').addClass('disabled').attr('disabled', 'disabled').html("<span>Hết hàng</span>");

							 jQuery('#detail-product #buy-now').addClass('disabled').attr('disabled', 'disabled').html("<span>Hết hàng</span>").hide();
							 var message = variant ? "Hết hàng" : "Không có hàng";
							 jQuery('#detail-product .pro-soldold').removeClass('hidden')
							 jQuery('#detail-product .pro-soldold').text(message);
							 check_variant = false;
						 }

						 if(variant.price < variant.compare_at_price){
							 //jQuery('#price-preview').html("<span>" + Haravan.formatMoney(variant.price, "{{amount}}₫") + "</span><del>" + Haravan.formatMoney(variant.compare_at_price, "{{amount}}₫") + "</del>");
							 var pro_sold = variant.price ;
							 var pro_comp = variant.compare_at_price / 100;
							 var sale = 100 - (pro_sold / pro_comp) ;
							 var kq_sale = Math.round(sale);
							 var html = '<span class="pro-sale">-' + kq_sale + '%</span>';									
							 html += '<span class="pro-price">' + Haravan.formatMoney(pro_sold, "{{amount}}₫") + '</span>';
							 html += '<del>' + Haravan.formatMoney(variant.compare_at_price, "{{amount}}₫") + '</del>';
							 jQuery('#detail-product #price-preview').html(html);
							 jQuery('#detail-product .price-fixed-mb').html(html);
						 } 
						 else {
							 jQuery('#detail-product #price-preview').html("<span class='pro-price'>" + Haravan.formatMoney(variant.price, "{{amount}}₫" + "</span>"));
							 jQuery('#detail-product .price-fixed-mb').html("<span class='pro-price'>" + Haravan.formatMoney(variant.price, "{{amount}}₫" + "</span>"));
						 }
						} 
						else {
							jQuery('#detail-product .add-to-cartProduct').addClass('disabled').attr('disabled', 'disabled').html("<span>Hết hàng</span>");

							jQuery('#detail-product #buy-now').addClass('disabled').attr('disabled', 'disabled').html("<span>Hết hàng</span>").hide();
							var message = variant ? "Hết hàng" : "Không có hàng";
							jQuery('#detail-product .pro-soldold').removeClass('hidden')
							jQuery('#detail-product .pro-soldold').text(message);
							check_variant = false;
						}
						return check_variant;
					};
					jQuery(document).ready(function($){
						
						new Haravan.OptionSelectors("product-select", { product: {"available":true,"compare_at_price_max":35000000.0,"compare_at_price_min":35000000.0,"compare_at_price_varies":false,"compare_at_price":35000000.0,"content":null,"description":null,"featured_image":"https://product.hstatic.net/200000259513/product/marble_027680435c62482c9b2e38dbc7879828.png","handle":"marble-sign","id":1029938602,"images":["https://product.hstatic.net/200000259513/product/marble_027680435c62482c9b2e38dbc7879828.png","https://product.hstatic.net/200000259513/product/a1f64afd-6b4a-4b29-973e-985e9d3833b5_315333b58c174a0d8cffc8ac1885b2f6.jpeg","https://product.hstatic.net/200000259513/product/0de2e9eafc4c0c12555d_2d317005bcc24232a2b255de3ef049a3.jpg"],"options":["SIZE"],"price":24500000.0,"price_max":24500000.0,"price_min":24500000.0,"price_varies":false,"tags":[],"template_suffix":null,"title":"MENDE MARBLE SIGN","type":"sơ mi","url":"/products/marble-sign","pagetitle":"MENDE MARBLE SIGN","metadescription":null,"variants":[{"id":1065926060,"barcode":"SP001044","available":false,"price":24500000.0,"sku":"SP001044","option1":"S","option2":"","option3":"","options":["S"],"inventory_quantity":0,"old_inventory_quantity":0,"title":"S","weight":0.0,"compare_at_price":35000000.0,"inventory_management":"haravan","inventory_policy":"deny","selected":false,"url":null,"featured_image":null},{"id":1065926063,"barcode":"SP001218","available":true,"price":24500000.0,"sku":"SP001218","option1":"M","option2":"","option3":"","options":["M"],"inventory_quantity":10,"old_inventory_quantity":10,"title":"M","weight":0.0,"compare_at_price":35000000.0,"inventory_management":"haravan","inventory_policy":"deny","selected":false,"url":null,"featured_image":null},{"id":1065926064,"barcode":"SP001046","available":true,"price":24500000.0,"sku":"SP001046","option1":"L","option2":"","option3":"","options":["L"],"inventory_quantity":123,"old_inventory_quantity":123,"title":"L","weight":0.0,"compare_at_price":35000000.0,"inventory_management":"haravan","inventory_policy":"deny","selected":false,"url":null,"featured_image":null}],"vendor":"Mende","published_at":"2021-04-15T14:21:39.091Z","created_at":"2020-12-15T06:29:00.597Z","not_allow_promotion":false}, onVariantSelected: selectCallback });

						 // Add label if only one product option and it isn't 'Title'.
						 
						 $('#detail-product .selector-wrapper:eq(0)').prepend('<label>SIZE</label>');
							 

							// Auto-select first available variant on page load.
							
							
							
							 
							
							
							
							$('#detail-product .single-option-selector:eq(0)').val("M").trigger('change');
							 
							 
							 
							
							 
							 $('#detail-product .selector-wrapper select').each(function(){
								 $(this).wrap( '<span class="custom-dropdown custom-dropdown--white"></span>');
								 $(this).addClass("custom-dropdown__select custom-dropdown__select--white");
							 });
								
								});

$(document).ready(function(){
	$('#add-to-cart').click(function(e){	
		e.preventDefault();
		$(this).addClass('clicked_buy');
		add_item_show_modalCart($('#product-select').val());
		//getCartModal();
	});
	$('#buy-now').click(function(e){	
		e.preventDefault() ;
		var id = $('select#product-select').val();
		var quantity = $('#quantity').val();
		var params = {
			type: 'POST',
			url: '/cart/add.js',
			async : false,
			data: 'quantity=' + quantity + '&id=' + id,
			dataType: 'json',
			success: function(line_item) {
				window.location = '/checkout';
			},
			error: function(XMLHttpRequest, textStatus) {
				Haravan.onError(XMLHttpRequest, textStatus);
			}
		};
		jQuery.ajax(params);
	});
});



$(document).ready(function(){
	$('#add-to-cartbottom').click(function(){	
		$('#add-to-cart').trigger('click');
	});
	$('#quan-input').keyup(function(){
		$('[name="quantity"]').val($(this).val());
	})
	$('[name="quantity"]').on('keyup change', function(){
		$('#quan-input').val($(this).val());
	})
});
$(document).on("click","#product-zoom-in",function(){
	//	var indexThumb = $(this).index();
	$("body").addClass("open_layer");
	$("#divzoom").css({'opcaity':0,'visibility':'hidden'}).show();
	$('.divzoom_main').flickity({
		resize:true,
		draggable: true,
	});
	if($(window).width() > 768){
		var ncurrent = parseInt($(".gallery-index .current").html()) - 1;
	}
	else{
		var ncurrent = parseInt($(".product-gallery-item.is-selected").index());
	}
	$('.divzoom_main').flickity('select',ncurrent);
	setTimeout(function(){$("#divzoom").css({'opcaity': 1,'visibility':'visible'})},50);
});
$(document).on('click','#closedivZoom', function(event) {
	$("#divzoom").hide();
	$("body").removeClass("open_layer");
	$('.divzoom_main').flickity('select',0);
	//$('.divzoom_main').slick('unslick');
});