{extends "common/page.tpl"}

{block main}

    {include "../common/components/breadcrumbs.tpl" breadcrumbs=[ "name" => "События" ]}

    {include "./promotions/bl-promotions.tpl"}

    {include "../common/components/bl-viewing.tpl"}

{/block}
