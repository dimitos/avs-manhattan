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
