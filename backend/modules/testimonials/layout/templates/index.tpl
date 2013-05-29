{include:{$BACKEND_CORE_PATH}/layout/templates/head.tpl}
{include:{$BACKEND_CORE_PATH}/layout/templates/structure_start_module.tpl}

<div class="pageTitle">
	<h2>{$lblTestimonials|ucfirst}</h2>

	{option:showTestimonialsAdd}
	<div class="buttonHolderRight">
		<a href="{$var|geturl:'add'}" class="button icon iconAdd" title="{$lblAdd|ucfirst}">
			<span>{$lblAdd|ucfirst}</span>
		</a>
	</div>
	{/option:showTestimonialsAdd}
</div>

{option:datagrid}
	<div class="datagridHolder">
		{$datagrid}
	</div>
{/option:datagrid}
{option:!datagrid}<p>{$msgNoItems}</p>{/option:!datagrid}

{include:{$BACKEND_CORE_PATH}/layout/templates/structure_end_module.tpl}
{include:{$BACKEND_CORE_PATH}/layout/templates/footer.tpl}