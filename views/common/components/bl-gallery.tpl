{$blockGalleryData = [
    "/img/gallery/bl_gallery_1.jpg",
    "/img/gallery/bl_gallery_2.jpg",
    "/img/gallery/bl_gallery_3.jpg",
    "/img/gallery/bl_gallery_4.jpg"
    ]}
<section class="section page__section block-gallery">
    <div class="container">
        <div class="section__top">
            <h2 class="title title__section block-gallery__title">Галерея фото</h2>
            <div class="block-gallery__link">
                {include "./link-page.tpl" linkData=["class" => "block-gallery__right", "id" => "arrow-right", "href" => "gallery", "text" => "Смотреть все"]}
            </div>
        </div>
    </div>
    <div class="block-gallery__list">
        {foreach $blockGalleryData as $item}
            {$pathImage = mb_substr($item, 0, -4)}
            <div class="block-gallery__item">
                <picture>
                    <source srcset="{$pathImage}-420.webp" media="(max-width: 420px)" type="image/webp" />
                    <source srcset="{$pathImage}-420.jpg" media="(max-width: 420px)" />
                    <source srcset="{$pathImage}.webp" type="image/webp" />
                    <img class="image image__fit image__fit_cover"
                        src="{$pathImage}.jpg"
                        alt="БЦ «Манхэттен» в центре Екатеринбурга"
                        width="360"
                        height="370"
                        loading="lazy"
                        decoding="async"/>
                </picture>
            </div>
        {/foreach}
    </div>
</section>
