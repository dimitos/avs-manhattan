// Вызов модальных окон
import { windowHeight } from "./global";

export let arcticmodal_settings = {
    overlay: {
        css: {
            backgroundColor: "rgba(0, 0, 0, 0.75)",
            opacity: 1,
            backdropFilter: "blur(4px)"
        }
    },
    beforeOpen(data, modal) {
        let modalParent = $(modal).parent();
        let maxHg = windowHeight() - modalParent.padding("top") - modalParent.padding("bottom");
        $(modal).css("max-height", maxHg);
        $(".modal").css("max-height", maxHg);
    }
};

$(document).ready(function() {
    window.alert = function(content) {
        $(".intopModal-alert .modal__inner").html(content).parents(".intopModal-alert").arcticmodal(arcticmodal_settings);
    }

    $(window).resize(function () {
        arcticmodal_settings.beforeOpen(null, ".intopModal:visible");
    });

    $("[data-modal]").click(function (event) {
        event.preventDefault();

        let $modal = $(".intopModal-" + $(this).data("modal"));

        if ($modal.length > 0) {
            $modal.arcticmodal(arcticmodal_settings);
        }


        let indexSlide = $(this).data("image-index");
        if ($(".arcticmodal-container .modal__album-swiper").length > 0) swiperAlbumInit(indexSlide);
    });
});

function swiperAlbumInit(indexSlide) {
    new Swiper(".arcticmodal-container .modal__album-swiper", {
        roundLengths: true,
        watchOverflow: true,
        initialSlide: indexSlide,
        loop: true,
        slidesPerView: 1,
        slidesPerGroup: 1,
        speed: 400,
        spaceBetween: 15,
        navigation: {
            nextEl: ".arcticmodal-container .slider-btn__next",
            prevEl: ".arcticmodal-container .slider-btn__prev",
        },
        pagination: {
            el: ".arcticmodal-container .slider-pagination",
            clickable: true,
        }
    });
}
