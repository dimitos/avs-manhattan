// инициализация слайдера exclusive
if ($(".exclusive").length > 0) {
    new Swiper(".exclusive", {
        roundLengths: true,
        slidesPerView: "auto",
        speed: 800,
        spaceBetween: 16,
        breakpoints: {
            1160: {
                spaceBetween: 24,
            },
        },
    });
}

/* ---------------------- слайдер offer в блоке bl-offer -----------------------*/
let swiperOffer = null;

initSliderOffer();
$(window).on("resize", initSliderOffer);

/**
 *  Функция активации/деактивации слайдера offer в блоке bl-offer
 */
function initSliderOffer() {
    if($(window).width() >= 768 ) {
        // деактивация слайдера offer в блоке bl-offer
        if(swiperOffer) {
            swiperOffer.destroy();
            swiperOffer = null;
        }
    } else {
        // активация слайдера offer в блоке bl-offer
        if ($(".offer").length > 0 && !swiperOffer) swiperOfferInit();
    }
}

// определяем слайдер offer в блоке bl-offer
function swiperOfferInit() {
    swiperOffer = new Swiper(".offer", {
        roundLengths: true,
        slidesPerView: "auto",
        slidesPerGroup: 1,
        speed: 800,
    });
}
