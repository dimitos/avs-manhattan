/* ---------------------- слайдер filter в компоненте filter -----------------------*/
let swiperFilter = null;

initSliderFilter();
$(window).on("resize", initSliderFilter);

/**
 *  Функция активации/деактивации слайдера filter в компоненте filter
 */
function initSliderFilter() {
    if($(window).width() >= 1160 ) {
        // деактивация слайдера filter в компоненте filter
        if(swiperFilter) {
            swiperFilter.destroy();
            swiperFilter = null;
        }
    } else {
        // активация слайдера filter в компоненте filter
        if ($(".filter").length > 0 && !swiperFilter) swiperFilterInit();
    }
}

// определяем слайдер filter в компоненте filter
function swiperFilterInit() {
    swiperFilter = new Swiper(".filter", {
        roundLengths: true,
        slidesPerView: "auto",
        slidesPerGroup: 1,
        speed: 800,
    });
}
