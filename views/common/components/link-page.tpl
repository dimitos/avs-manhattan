<a class="link link-page {$linkData.class}" href="{$linkData.href}">
    <div class="link-page__round">
        {include "./icon.tpl" icon=["class" => "link-page__icon icon__{$linkData.id}", "id" => "{$linkData.id}"]}
    </div>
    {if !empty($linkData.text)}
        <span class="link-page__text">{$linkData.text}</span>
    {/if}
</a>
