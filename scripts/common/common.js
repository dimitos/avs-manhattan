/**
 * Delete anchor hash
 */
const hash = document.querySelectorAll(".hash");
if (document.querySelectorAll(".hash")) {
    hash.forEach((el) => el.addEventListener("click", () => setTimeout(() => history.replaceState(null, null, " "), 1), { passive: true }));
}

// инициализация слайдера events
if ($(".swiper.events").length > 0) {
    new Swiper(".swiper.events", {
        roundLengths: true,
        loop: true,
        slidesPerView: "auto",
        speed: 800,
        spaceBetween: 16,
        breakpoints: {
            1160: {
                slidesPerView: 3,
                slidesPerGroup: 3,
                spaceBetween: 24,
            },
        },
    });
}
