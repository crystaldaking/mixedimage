<input type="hidden" id="tv{$tv->id}" name="tv{$tv->id}" value="{$tv->value|escape}" />
<div id="mixedimage{$tv->id}" class="mixedimage"></div>

{if $showValue === "true"}
	<div id="mixedimage_name{$tv->id}" class="mixedimge_name">
		{if $tv->value}
			{$tv->value}
		{/if}
	</div>
{/if}

{if $showPreview === "true"}
	<div id="tv-image-preview-{$tv->id}" class="modx-tv-image-preview">
		{if $tv->value}
			<img src="{$_config.connectors_url}system/phpthumb.php?w=300&h=300&aoe=0&far=0&src={$tv->value}" alt="" />
		{/if}
	</div>
{/if}

<script type="text/javascript">

	mixedimage{$tv->id} = MODx.load{literal}({
		{/literal}
		xtype: 'mixedimage-panel'
		,renderTo: 'mixedimage{$tv->id}'
		,tvFieldId: 'tv{$tv->id}'
		,tvId: '{$tv->id}'
		,value: '{$tv->value}'
		,res_id: {$res_id}
		,res_alias: '{$res_alias}'
		,p_id: {$p_id}
		,p_alias: '{$p_alias}'
		,tv_id: {$tv_id}
		,ms_id: {$ms_id}
		,acceptedMIMEtypes: {$MIME_TYPES}
		,prefixFilename: {$prefixFilename}
		,lex: {$jsonlex}
		,source: '{$tv->source}'
		,showPreview: {$showPreview}
		,showValue: {$showValue}
		,ctx_path: '{$source_path}'
		{literal}
	});
	{/literal}

</script>