{assign var="fieldInstances" value=$record->getFields('028A')}
{if !is_null($fieldInstances)}
<tr>
  <td class="record-field-label">Autorin/Autor:</td>
  <td>
    {foreach from=$fieldInstances item=$field name="fields"}
      {if isset($field->subfields->a)}<span class="028A$a">{$field->subfields->a},</span>{/if}
      {if isset($field->subfields->A)}<span class="028A$a">{$field->subfields->A},</span>{/if}
      {if isset($field->subfields->d)}<span class="028A$d">{$field->subfields->d}</span>{/if}
      {if isset($field->subfields->D)}<span class="028A$d">{$field->subfields->D}</span>{/if}
      {if isset($field->subfields->e)}<span class="028A$d">{$field->subfields->e}-</span>{/if}{if isset($field->subfields->m)}<span class="028A$d">{$field->subfields->m}-</span>{/if}
      {if isset($field->subfields->E)}<span class="028A$d">{$field->subfields->E}-</span>{/if}{if isset($field->subfields->M)}<span class="028A$d">{$field->subfields->M}</span>{/if}
      {if !$smarty.foreach.fields.last}<br/>{/if}
    {/foreach}
  </td>
</tr>
{/if}
