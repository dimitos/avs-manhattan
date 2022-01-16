<form class="request__form {$requestFormData.class}">
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
        {include "./buttons.tpl"
                buttonsData=[
                    "class" => "",
                    "typeButton" => "{$requestFormData.typeButton}",
                    "colorButton" => "{$requestFormData.colorButton}",
                    "textButton" => "{$requestFormData.textButton}",
                    "dataModal" => "{$requestFormData.dataModal}",
                    "btnIcon" => "{$requestFormData.btnIcon}"
                ]}
        <div class="request__check">
            <label class="request__privacy">
                <input class="request__checkbox request__checkbox-privacy" type="checkbox" checked>
                <span class="request__agreement"><span data-modal="privacy">Даю согласие на обработку персональных данных</span></span>
            </label>
        </div>
    </div>
</form>
