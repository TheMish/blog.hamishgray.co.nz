
	
<% if MainImage %>
<div class="row">
	
	<div class="main_img">
		<img src="$MainImage.URL" width="100%">
	</div>
	
</div>
<% end_if %>
	
	
	
<% if SortedSectionImages %>

<div class="row">
<% loop SortedSectionImages %>
	<div class="gallery_img">
	<img src="$CroppedImage(1000,667).URL" width="100%">
	</div>
<% if MultipleOf(2) %>
</div>
<div class="row">
<% end_if %>
<% end_loop %>
</div>

<% end_if %>


