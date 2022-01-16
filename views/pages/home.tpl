{extends "common/page.tpl"}

{$heroData = [
    "image" => "/img/images/hero_1.jpg",
    "title" => "БЦ «Манхэттен» <br>в центре Екатеринбурга",
    "text" => "Продажа или аренда комфортных современных офисов, торговых площадей, мест в теплом подземном паркинге; уникальных лофт-аппартаментов.",
    "apart" => [
        ["title" => "55 000", "text" => "площадь м²"],
        ["title"=>  "B+", "text" => "класс"],
        ["title" => "17", "text" => "этажей"]
    ]
]}

{$eventsData = [
    [
        "title" => "Aкция",
        "text" => "Праздники продолжаются! Продажа офиса за 45 000 ₽/м²",
        "date" => "20.12.2021",
        "href" => "promotion"
    ],
    [
        "title" => "Новости",
        "text" => "Праздники продолжаются! Новогодняя Ёлка для детей!",
        "date" => "29.12.2021",
        "href" => "promotion"
    ],
    [
        "title" => "Акция",
        "text" => "С Новым годом! Аренда офиса за 1 000 ₽/м²",
        "date" => "3.01.2022",
        "href" => "promotion"
    ]
]}

{block main}

    {include "../common/components/hero.tpl" heroData=$heroData}

    {include "../common/components/bl-looking.tpl"}

    {include "./home/bl-exclusive.tpl"}

    {include "../common/components/bl-gallery.tpl"}

    {include "../common/components/bl-promo.tpl" eventsData=$eventsData}

    {include "../common/components/bl-viewing.tpl"}

{/block}



