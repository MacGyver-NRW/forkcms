{include:{$BACKEND_CORE_PATH}/Layout/Templates/Head.tpl}
{include:{$BACKEND_CORE_PATH}/Layout/Templates/StructureStartModule.tpl}
<div class="row">
	<div class="col-md-12">
		<h2>{$lblTranslations|ucfirst}</h2>
		{option:showLocaleExportAnalyse}
		<div class="btn-toolbar pull-right">
			<div class="btn-group" role="group">
				<a href="{$var|geturl:'ExportAnalyse'}&amp;language={$language}" class="btn btn-primary" title="{$lblExport|ucfirst}">
					<span class="glyphicon glyphicon-plus-sign"></span>
					{$lblExport|ucfirst}
				</a>
			</div>
		</div>
		{/option:showLocaleExportAnalyse}
	</div>
</div>
<div class="row">
	<div class="col-md-12">
		{option:dgFrontend}
		<h4>{$lblFrontend|ucfirst}</h4>
		{$dgFrontend}
		{/option:dgFrontend}
		{option:!dgFrontend}
		<h4>{$lblFrontend|ucfirst}</h4>
		<p>{$msgNoItemsAnalyse}</p>
		{/option:!dgFrontend}
		{option:dgBackend}
		<h4>{$lblBackend|ucfirst}</h4>
		{$dgBackend}
		{/option:dgBackend}
		{option:!dgBackend}
		<h4>{$lblBackend|ucfirst}</h4>
		<p>{$msgNoItemsAnalyse}</p>
		{/option:!dgBackend}
	</div>
</div>

{include:{$BACKEND_CORE_PATH}/Layout/Templates/StructureEndModule.tpl}
{include:{$BACKEND_CORE_PATH}/Layout/Templates/Footer.tpl}
