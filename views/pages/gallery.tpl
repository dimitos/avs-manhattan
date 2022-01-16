{extends "common/page.tpl"}

{block main}

    {include "../common/components/breadcrumbs.tpl" breadcrumbs=[ "name" => "Фотогалерея" ]}

    {include "./gallery/bl-gallery.tpl"}

    {include "../common/components/bl-viewing.tpl"}

{/block}
