<!DOCTYPE html>
<html class="page page_{$page->name}" lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="viewport-fit=cover, width=device-width, initial-scale=1">

    {* Title, description, etc *}
    {include "common/page/head/seo.tpl"}

    {* Предзагрузка критических ресурсов *}
    {include "common/page/head/preload.tpl"}

    {* Фавиконки *}
    {include "common/page/head/favicons.tpl"}

    {* Микроразметка Open Graph *}
    {include "common/page/head/open-graph.tpl"}

    {* Микроразметка Schema.org *}
    {include "common/page/head/schema.tpl"}

    {* Критические скрипты *}
    {$inline_scripts}

    {* Стили, общие для всех страниц *}
    {$common_styles}

    {* Стили текущей страницы *}
    {$page->styles}

    {* Рекламные счётчики *}
    {if $smarty.env.MODE === "prod"}
        {include "common/page/head/counters.tpl"}
    {/if}
</head>
<body class="page__body page_body_{$page->name}">
    {* Спрайт с svg-иконками *}
    {file_content("/img/symbol-defs.svg")}

    {* Основной заголово страницы *}
    <h1 class="page__h1 visually-hidden">{$meta->h1}</h1>

    {* Шапка страницы *}
    {include "common/components/header.tpl" header=[
        "class" => "page__header page__header_{$page->name}"
    ]}

    {* Меню страницы *}
    {include "common/components/menu.tpl"}

    {* Основной контент страницы *}
    <main class="{$page->name} page__main page__main_{$page->name}">
        {block main}{/block}
    </main>

    {* Футер страницы *}
    {include "common/components/footer.tpl" footer=[
        "class" => "page__footer page__footer_{$page->name}"
    ]}

    {* Модалки *}
    <div class="intopModal__wrap">
        {include "common/page/modals/request.tpl" eng="request" title="Записаться на просмотр"}
        {include "common/page/modals/thanks.tpl" eng="thanks"}
        {include "common/page/modals/privacy.tpl" eng="privacy"}
        {if (($page->name == "object"))}
            {include "common/page/modals/how-much.tpl" eng="how-much" title="Узнать цену"}
        {/if}
        {if (($page->name == "album"))}
            {include "common/page/modals/album.tpl" eng="album"}
        {/if}
    </div>

    {* Уведомления *}
    <div class="page__notifications"></div>

    {if ($page->name == "contacts")}
        <script src="https://api-maps.yandex.ru/2.1?apikey=29efabea-a274-4174-b472-b2f49abef7c2&lang=ru_RU"></script>
    {/if}

    {* Вендорные скрипты *}
    {$vendor_scripts}

    {* Скрипты, общие для всех страниц *}
    {$common_scripts}

    {* Скрипты текущей страницы *}
    {$page->scripts}
</body>
</html>
