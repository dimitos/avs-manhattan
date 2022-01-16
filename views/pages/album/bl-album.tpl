<section class="section page__section bl-album">
    <div class="container">
        <div class="section__top">
            <a href="gallery" class="btn bl-album__return">
                {include "views/common/components/icon.tpl" icon=["class" => "icon__arrow-left-short", "id" => "arrow-left-short"]}
            </a>
            <h2 class="title title__section bl-album__title">{$albumData.title}</h2>
        </div>
        <div class="bl-pane__wrapper">
            {foreach $albumData.images as $item}
                {$pathImage = mb_substr($item, 0, -4)}
                <div class="bl-pane__item">
                    <div class="card card__wrapper">
                        <picture>
                            <source srcset="{$pathImage}-420.webp" media="(max-width: 420px)" type="image/webp" />
                            <source srcset="{$pathImage}-420.jpg" media="(max-width: 420px)" />
                            <source srcset="{$pathImage}.webp" type="image/webp" />
                            <img class="image image__fit image__fit_cover"
                                src="{$pathImage}.jpg"
                                alt="БЦ «Манхэттен». Общий вид"
                                width="552"
                                height="356"
                                loading="lazy"
                                decoding="async"/>
                        </picture>
                        <button class="card__overlay" data-modal="album" data-image-index="{$item@iteration - 1}" type="button"></button>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</section>
