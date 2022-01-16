<section class="section page__section bl-description">
    <div class="container">
        <div class="bl-description__wrapper">
            <div class="bl-description__line"></div>
            {foreach $descriptionData as $item}
                <div class="bl-description__wr">
                    <h2 class="title bl-description__title">{$item.title}</h2>
                    <div class="bl-description__inner">
                        {foreach $item.description as $el}
                            <div class="bl-description__item {if !empty($item.check)}bl-description__item-check{/if}">{$el}</div>
                        {/foreach}
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</section>

