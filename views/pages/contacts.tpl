{extends "common/page.tpl"}

{block main}

    {include "../common/components/breadcrumbs.tpl" breadcrumbs=[ "name" => "Контакты" ]}

    {include "./contacts/bl-contacts.tpl"}

    {include "../common/components/bl-viewing.tpl"}

{/block}
