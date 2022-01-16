// инициализация слайдера Promo
if ($(".object-swiper").length > 0) {
    new Swiper(".object-swiper", {
        roundLengths: true,
        watchOverflow: true,
        loop: true,
        slidesPerView: 1,
        slidesPerGroup: 1,
        speed: 800,
        spaceBetween: 14,
        pagination: {
            el: ".object .slider-pagination",
            clickable: true,
        },
        breakpoints: {
            768: {
                spaceBetween: 24,
            }
        },
        thumbs: {
            swiper: {
                el: ".object-swiper-mini",
                slidesPerView: 3,
                slidesPerGroup: 3,
                loop: true,
                slideToClickedSlide: true,
                spaceBetween: 16,
                speed: 800,
                touchRatio: 0.3,
                watchSlidesProgress: true,
                breakpoints: {
                    768: {
                        spaceBetween: 24,
                    }
                },
            }
        }
    });
}
