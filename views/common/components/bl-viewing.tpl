<section class="section section__viewing">
    <picture>
        <source srcset="/img/images/viewing-420.webp" media="(max-width: 420px)" type="image/webp" />
        <source srcset="/img/images/viewing-420.jpg" media="(max-width: 420px)" />
        <source srcset="/img/images/viewing.webp" type="image/webp" />
        <img class="image image__fit image__fit_cover"
            src="/img/images/viewing.jpg"
            alt="БЦ «Манхэттен» в центре Екатеринбурга"
            width="1920"
            height="540"
            loading="lazy"
            decoding="async"/>
    </picture>
    <div class="container">
        <div class="viewing">
            <h2 class="title viewing__title">Записаться на просмотр</h2>
                {include "./request-form.tpl"
                requestFormData=[
                    "class" => "viewing__form",
                    "textButton" => "Записаться на просмотр",
                    "typeButton" => "btn__default_main",
                    "colorButton" => "btn__default_black-black",
                    "dataModal" => "thanks",
                    "btnIcon" => "false"
                ]}
        </div>
    </div>
</section>
