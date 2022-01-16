<section class="section page__section block-promo">
    <div class="container">
        <div class="section__top">
            <h2 class="title title__section block-promo__title">События</h2>
            <div class="block-promo__link">
                {include "./link-page.tpl" linkData=["class" => "block-promo__right", "id" => "arrow-right", "href" => "promotions", "text" => "Смотреть все"]}
            </div>
        </div>
        {include "./events.tpl"}
    </div>
</section>
