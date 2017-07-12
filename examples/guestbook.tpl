{* Smarty *}


{extends "foo.html"}

<table border="0" width="300">
    {block header}
        <tr>
            <th colspan="2" bgcolor="#d1d1d1">Guestbook Entries (<a href="{$SCRIPT_NAME}?action=add">add</a>)</th>
        </tr>
    {/block}
    {foreach from=$data item="entry"}
        <tr bgcolor="{cycle values="#dedede,#eeeeee" advance=false}">
            <td>{$entry.Name|escape}</td>        
            <td align="right">{$entry.EntryDate|date_format:"%e %b, %Y %H:%M:%S"}</td>        
        </tr>
        <tr>
            <td colspan="2" bgcolor="{cycle values="#dedede,#eeeeee"}">{$entry.Comment|escape}</td>
        </tr>
    {foreachelse}
        <tr>
            <td colspan="2">No records</td>
        </tr>
    {/foreach}
	{if $foo|@count == 0}
		Woo
	{/if}
</table>
