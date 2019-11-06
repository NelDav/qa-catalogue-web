{* 710a_AddedCorporateName_ss *}
{assign var="fieldInstances" value=getFields($record, '710')}
{if !is_null($fieldInstances)}
  <em>Additional Corporate names</em><br>
  {foreach $fieldInstances as $field}
    <span class="710">
      {$field->subfields->a}
      {* 710d_AddedCorporateName_dates *}
      {if isset($field->subfields->d)}
        <span class="dates">{$field->subfields->d}</span>
      {/if}
      {if isset($field->subfields->e)}
        <span class="relator">{$field->subfields->e}</span>
      {/if}
    </span>
    <br/>
  {/foreach}
{/if}