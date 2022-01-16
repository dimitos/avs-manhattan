<div class="breadcrumbs">
    <div class="container">
        <ul class="breadcrumbs__list">
            <li class="breadcrumbs__item"><a class="link breadcrumbs__link" href="/">Главная</a></li>
            {if !empty($breadcrumbs.name_entry)}
                <li class="breadcrumbs__item"><a class="link breadcrumbs__link" href="{$breadcrumbs.link}">{$breadcrumbs.name}</a></li>
                <li class="breadcrumbs__item"><p class="breadcrumbs__text">{$breadcrumbs.name_entry}</p></li>
            {else}
                <li class="breadcrumbs__item"><p class="breadcrumbs__text">{$breadcrumbs.name}</p></li>
            {/if}
        </ul>
    </div>
</div>
