<button
    class="btn btn__default {$buttonsData.typeButton} {$buttonsData.colorButton} {$buttonsData.class} {if !empty($buttonsData.selected)}{$buttonsData.selected}{/if}"
    {if !empty($buttonsData.name)}name="{$buttonsData.name}"{/if}
    {if !empty($buttonsData.dataModal)}data-modal="{$buttonsData.dataModal}"{/if}
    type="button">
    <span class="btn__text">{$buttonsData.textButton}</span>
    {if ($buttonsData.btnIcon != "false")}
        {include "./icon.tpl" icon=["class" => "btn__icon btn__icon-{$buttonsData.btnIcon}", "id" => "{$buttonsData.btnIcon}"]}
    {/if}
</button>
