

<div class="row masonry"<% if SiteConfig.BrandColor %> style="background-color: #{$SiteConfig.BrandColor}"<% end_if %>>

	<div class="grid-sizer col-lg-3 col-md-4 col-sm-6 col-xs-12"></div>
	
	
	<% if $PaginatedList.Exists %>
		<% loop $PaginatedList %>
		
		
			<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 box grid-item
				<% if DoubleHeight %> height2<% end_if %>
				<% if ThumbnailImage %> dark<% end_if %>"
				<% if ThumbnailImage %> style="background-image: url($ThumbnailImage.URL);"<% end_if %>>
	
				<% include PostSummary %>
	
			</div>
			
		<% end_loop %>
	<% else %>
		<p><%t Blog.NoPosts 'There are no posts' %></p>
	<% end_if %>

</div>	
