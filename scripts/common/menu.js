// устанавливаем высоту menu__content для скролла меню, если маленький размер окна браузера
setHeightMenu();

// окрываем/закрываем меню от кликов
$(document).on("click", (e) => {
    if ($(".header__btn").is(e.target)) openMenu()
    else if ($(".menu-closer").is(e.target)) closeMenu()
    else if (!$(".menu__inner").is(e.target) && $(".menu__inner").has(e.target).length === 0) closeMenu();
});

/* ------------------------------ Функции -----------------------------------*/

/**
 * Функция открывает меню
 */
function openMenu (){
    $(".menu").addClass("open");
    $(".page").css({"overflow": "hidden"});
}

/**
 * Функция закрывает меню
 */
function closeMenu () {
    $(".menu").removeClass("open");
    $(".page").css({"overflow": "initial"});
}

/**
 * Функция отслеживает изменение размера окна браузера
 */
$(window).resize(() => setHeightMenu());

/**
 * Функция устанавливает высоту menu__content для скролла меню для маленьких размеров окна браузера
 */
function setHeightMenu () {
    var heightWindow = window.innerHeight;
    var heightMenu = $(".menu").outerHeight();
    if (heightMenu > heightWindow) {
        var heightMenuContent = heightWindow - (heightMenu - $(".menu__content").outerHeight());
        $(".menu__content").css({"height": heightMenuContent});
    } else {
        $(".menu__content").css({"height": "auto"});
    }
}
