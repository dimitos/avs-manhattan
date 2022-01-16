var expand = document.querySelector(".expand");
var expandBtn = document.querySelector(".expand-btn")

expandBtn.addEventListener("click", () => {
    if(expandBtn.classList.contains('open')) {
        expandBtn.innerHTML = "Развернуть";
    } else {
        expandBtn.innerHTML = "Свернуть";
    }
    expandBtn.classList.toggle('open');
    expand.classList.toggle('open');
})

// инициализация слайдера parking
if ($(".parking").length > 0) {
    new Swiper(".parking", {
        roundLengths: true,
        watchOverflow: true,
        loop: true,
        slidesPerView: 1,
        slidesPerGroup: 1,
        speed: 800,
        spaceBetween: 10,
        navigation: {
            nextEl: ".parking-swiper .slider-btn__next",
            prevEl: ".parking-swiper .slider-btn__prev",
        },
        pagination: {
            el: ".parking-swiper .slider-pagination",
            clickable: true,
        },
        breakpoints: {
            768: {
                spaceBetween: 20,
            },
            1160: {
                spaceBetween: 30,
            },
        },
    });
}

/* ------------------------- блок b-looking ---------------------------------------*/
// переключение tab в блоке b-looking
var tabLinks = document.querySelectorAll(".tab__link");
var tabItems = document.querySelectorAll(".tab__item");
tabLinks.forEach((el, index) => el.addEventListener("click", () => {
    tabItems.forEach((el, i) => {
        el.classList.remove("active");
        tabLinks[i].classList.remove("active");
    });
    tabLinks[index].classList.add("active");
    tabItems[index].classList.add("active");
}));

// слайдер tab__menu в блоке b-looking
let swiperTab = null;

initSliderTab();
$(window).on("resize", initSliderTab);

/**
 *  Функция активации/деактивации слайдера tab__menu блока b-looking
 */
function initSliderTab() {
    if($(window).width() >= 768 ) {
        // деактивация слайдера tab__menu блока b-looking
        if(swiperTab) {
            swiperTab.destroy();
            swiperTab = null;
        }
    } else {
        // активация слайдера tab__menu блока b-looking
        if ($(".tab__menu").length > 0 && !swiperTab) swiperTabInit();
    }
}

// определяем слайдер tab__menu блока b-looking
function swiperTabInit() {
    swiperTab = new Swiper(".tab__menu", {
        roundLengths: true,
        slidesPerView: "auto",
        slidesPerGroup: 1,
        speed: 800,
    });
}
