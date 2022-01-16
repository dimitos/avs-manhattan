{extends "common/page.tpl"}

{$albumData = [
        "title" => "БЦ «Манхэттен». Общий вид",
        "images" => [
            "img/gallery/gallery_5.jpg",
            "img/gallery/gallery_6.jpg",
            "img/gallery/gallery_7.jpg",
            "img/gallery/gallery_8.jpg",
            "img/gallery/gallery_9.jpg",
            "img/gallery/gallery_10.jpg",
            "img/images/about.jpg",
            "img/images/looking_1.jpg"
        ]
    ]}

{block main}

    {include "../common/components/breadcrumbs.tpl" breadcrumbs=[ "name" => "Фотогалерея", "link" => "gallery", "name_entry" => "Альбом. БЦ «Манхэттен». Общий вид" ]}

    {include "./album/bl-album.tpl" albumData=$albumData}

    {include "../common/components/bl-viewing.tpl"}

{/block}

{block modal-page}
    {include "views/common/modal/album.tpl" albumData=$albumData}
{/block}
