<section class="section page__section hero">
    <div class="hero__inner">
        {$pathImage = mb_substr($heroData.image, 0, -4)}
        <picture>
            <source srcset="{$pathImage}-420.webp" media="(max-width: 420px)" type="image/webp" />
            <source srcset="{$pathImage}-420.jpg" media="(max-width: 420px)" />
            <source srcset="{$pathImage}.webp" type="image/webp" />
            <img class="image image__fit image__fit_cover"
                src="{$pathImage}.jpg"
                alt="БЦ «Манхэттен» в центре Екатеринбурга"
                width="1920"
                height="790"
                decoding="async"/>
        </picture>
        <div class="container">
            <div class="hero__content">
                <div class="hero__wrapper">
                    <div class="hero__left">
                        <h2 class="title title__banner title__banner_hero">{$heroData.title}</h2>
                        <p class="hero__text">{$heroData.text}</p>
                        {if !empty($heroData.listItems)}
                            <ul class="hero__list">
                                {foreach $heroData.listItems as $item}
                                    <li class="hero__list-item">{$item}</li>
                                {/foreach}
                            </ul>
                        {/if}
                    </div>
                    {if !empty($heroData.apart)}
                        <div class="hero__right">
                            <div class="hero__apart">
                                {foreach $heroData.apart as $item}
                                    <div class="hero__apart-item">
                                        <div class="title title__banner hero__apart-title no-wrap">{$item.title}</div>
                                        <div class="hero__apart-text no-wrap">{$item.text}</div>
                                    </div>
                                {/foreach}
                            </div>
                        </div>
                    {/if}
                </div>
                <div class="hero__link">
                    {include "./link-page.tpl" linkData=["class" => "link-page__down hash", "id" => "arrow-down", "href" => "#hero-benefits", "text" => "Узнать больше"]}
                </div>
            </div>
        </div>
    </div>
    {if !empty($heroData.apart)}
        <div class="hero__right-place"></div>
    {/if}
    <div class="container">
        <div class="hero__benefits" id="hero-benefits">
            <div class="hero__benefits-item">
                <div class="hero__benefits-icon">
                    {include "./icon.tpl" icon=["class" => "benefits-icon", "id" => "fastfood"]}
                </div>
                <p class="hero__benefits-text">
                    Торговая галерея <br>с фуд-кортом
                </p>
            </div>
            <div class="hero__benefits-item">
                <div class="hero__benefits-icon">
                    {include "./icon.tpl" icon=["class" => "benefits-icon", "id" => "lift"]}
                </div>
                <p class="hero__benefits-text">
                    10 бесшумных <br>скоростных лифтов
                </p>
            </div>
            <div class="hero__benefits-item">
                <div class="hero__benefits-icon">
                    {include "./icon.tpl" icon=["class" => "benefits-icon", "id" => "parking"]}
                </div>
                <p class="hero__benefits-text">
                    Теплый подземный паркинг и наземная парковка
                </p>
            </div>
            <div class="hero__benefits-item">
                <div class="hero__benefits-icon">
                    {include "./icon.tpl" icon=["class" => "benefits-icon", "id" => "engineering"]}
                </div>
                <p class="hero__benefits-text">
                    Современные инженерные коммуникации
                </p>
            </div>
        </div>
    </div>
</section>
