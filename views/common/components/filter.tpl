<div class="swiper filter">
    <div class="swiper-wrapper">
        {foreach $filterData as $item}
            <div class="slide swiper-slide">
                {include "./buttons.tpl" buttonsData=$item}
            </div>
        {/foreach}
    </div>
</div>
