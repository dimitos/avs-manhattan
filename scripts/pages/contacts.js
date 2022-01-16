ymaps.ready(function () {
    var contactsMap = new ymaps.Map("contacts-map", {
        center: [56.844408, 60.616565],
        zoom: 13,
    }, {
        suppressMapOpenBlock: true, //убирает кнопку КАК ДОБРАТЬСЯ
    });

    var myPlacemark1 = new ymaps.Placemark(
        [56.844408, 60.616565],
        { hintContent: "БЦ «Манхэттен»»" },
        {
            iconLayout: "default#image",
            iconImageHref: "img/svg/marker.svg",
            iconImageSize: [36, 44],
            iconImageOffset: [0, -20]
        }
    );

    contactsMap.geoObjects.add(myPlacemark1);
    //contactsMap.behaviors.disable("scrollZoom");
});
