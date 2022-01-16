<div class="swiper events">
    <div class="swiper-wrapper">
        {foreach $eventsData as $item}
            <div class="slide swiper-slide">
                <a class="events__link" href="{$item.href}">
                    <div class="slide__wrapper">
                        <div class="title events__title">{$item.title}</div>
                        <p class="events__text">{$item.text}</p>
                        <div class="events__date">{$item.date}</div>
                    </div>
                </a>
            </div>
        {/foreach}
    </div>
</div>
