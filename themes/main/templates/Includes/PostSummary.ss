
<a href="$Link" class="box-inner">
	
	<% if ThumbnailImage %>
	
		<h3>$Title</h3>
	
		<div class="box-content">
			<h6 class="nm">
				<% include EntryMeta %>
			</h6>
		</div>
	
	<% else %>
	
		<h3>$Title</h3>
		<h6>
			<% include EntryMeta %>
		</h6>
		<% if CustomSummary %>
			<hr>
			$CustomSummary
		<% else_if Content %>
			<hr>
			<p>$Content.LimitCharacters(160)</p>
		<% end_if %>
	
	<% end_if %>

</a>
