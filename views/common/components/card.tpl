<div class="card card__wrapper">
    {$pathImage = mb_substr($card[0].image, 0, -4)}
    <picture>
        <source srcset="{$pathImage}-420.webp" media="(max-width: 420px)" type="image/webp" />
        <source srcset="{$pathImage}-420.jpg" media="(max-width: 420px)" />
        <source srcset="{$pathImage}.webp" type="image/webp" />
        <img class="image image__fit image__fit_cover"
            src="{$pathImage}.jpg"
            alt="{$card[0].alt}"
            width="840"
            height="541"
            loading="lazy"
            decoding="async"/>
    </picture>
    <div class="bg-gradient"></div>
    <div class="card__inner">
        <div class="card__link">
            {include "views/common/components/link-page.tpl" linkData=["class" => "link-page__arrow-right-top", "id" => "arrow-right-top", "href" => "{$card[0].href}"]}
        </div>
        <div class="title card__title">{$card[0].title}</div>
        <div class="card__type">{$card[0].type}</div>
        <div class="card__footer">
            {foreach $card[0].footer as $item}
                <div class="card__footer-item">
                    <div class="title card__footer-name no-wrap">{$item.name}</div>
                    <div class="card__footer-value no-wrap">{$item.value}</div>
                </div>
            {/foreach}
        </div>
    </div>
    <a class="card__overlay" href="{$card[0].href}"></a>
</div>
