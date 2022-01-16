{extends "common/components/modal.tpl"}

{block modal}
    <h2 class="title modal__title">{$title}</h2>
    <form class="request__form viewing__form">
        <div class="request__fields">
            <div class="request__fields-item">
                <label class="request__field request__field-name">
                    <input class="request__input request__input-name" type="text" placeholder="Введите имя">
                </label>
            </div>
            <div class="request__fields-item">
                <label class="request__field request__field-phone">
                    <input class="request__input request__input-phone" type="tel" name="phone" placeholder="+7(___) --- -- --">
                </label>
            </div>
            <div class="request__fields-item">
                <label class="request__field request__field-comment">
                    <input class="request__input request__input-comment" placeholder="Дополнительная информация">
                </label>
            </div>
        </div>
        <div class="request__buttons">
            {include "views/common/components/buttons.tpl"
                    buttonsData=[
                        "class" => "",
                        "typeButton" => "btn__default_main",
                        "colorButton" => "btn__default_black-black",
                        "textButton" => "Записаться на просмотр",
                        "dataModal" => "thanks",
                        "btnIcon" => "false"
                    ]}
            <div class="request__check">
                <label class="request__privacy">
                    <input class="request__checkbox request__checkbox-privacy" type="checkbox" checked>
                    <span class="request__agreement"><span data-modal="privacy">Даю согласие на обработку персональных данных</span></span>
                </label>
            </div>
        </div>
    </form>
{/block}
