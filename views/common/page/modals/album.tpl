<div class="intopModal intopModal-album">
    <div class="intopModal__inner">
        <button class="intopModal__close arcticmodal-close" type="button">
            <svg width="14" height="14" viewBox="0 0 14 14" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" clip-rule="evenodd" d="M8.41425 7.00025L13.7072 1.70725C14.0982 1.31625 14.0982 0.68425 13.7072 0.29325C13.3162 -0.09775 12.6842 -0.09775 12.2933 0.29325L7.00025 5.58625L1.70725 0.29325C1.31625 -0.09775 0.68425 -0.09775 0.29325 0.29325C-0.09775 0.68425 -0.09775 1.31625 0.29325 1.70725L5.58625 7.00025L0.29325 12.2933C-0.09775 12.6842 -0.09775 13.3162 0.29325 13.7072C0.48825 13.9022 0.74425 14.0002 1.00025 14.0002C1.25625 14.0002 1.51225 13.9022 1.70725 13.7072L7.00025 8.41425L12.2933 13.7072C12.4882 13.9022 12.7443 14.0002 13.0002 14.0002C13.2562 14.0002 13.5122 13.9022 13.7072 13.7072C14.0982 13.3162 14.0982 12.6842 13.7072 12.2933L8.41425 7.00025Z"/>
            </svg>
        </button>
        <div class="modal__slider">
            <div class="slider-wr modal__album unselectable">
                <div class="swiper modal__album-swiper">
                    <div class="swiper-wrapper">
                        {foreach $albumData.images as $item}
                            {$pathImage = mb_substr($item, 0, -4)}
                            <div class="slide swiper-slide">
                                <picture>
                                    <source srcset="{$pathImage}-420.webp" media="(max-width: 420px)" type="image/webp" />
                                    <source srcset="{$pathImage}-420.jpg" media="(max-width: 420px)" />
                                    <source srcset="{$pathImage}.webp" type="image/webp" />
                                    <img class="image image__fit image__fit_cover"
                                        src="{$pathImage}.jpg"
                                        alt=""
                                        width="1040"
                                        height="671"
                                        loading="lazy"
                                        decoding="async"/>
                                </picture>
                            </div>
                        {/foreach}
                    </div>
                </div>
                <div class="slider-nav">
                        <button class="slider-nav__btn slider-btn__prev" type="button">
                            {include "views/common/components/icon.tpl" icon=["class" => "link-page__icon icon__arrow-left", "id" => "arrow-left"]}
                        </button>
                        <button class="slider-nav__btn slider-btn__next" type="button">
                            {include "views/common/components/icon.tpl" icon=["class" => "link-page__icon icon__arrow-right", "id" => "arrow-right"]}
                        </button>
                    </div>
                <div class="slider-pagination"></div>
            </div>
        </div>
    </div>
</div>
