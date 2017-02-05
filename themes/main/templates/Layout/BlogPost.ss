</div><!-- /.container-fluid -->


<div class="container" id="post-meta"<% with Country %> style="background-image: url($Pattern.URL);"<% end_with %>>
	<div class="inner dark">
		<div class="row">
			<div class="col-md-12">
				<h5><strong>
				<% include EntryMeta %>
				</strong></h5>
			</div>
		</div>
	</div>
</div>



<!-- BLOG SECTIONS
============================= -->

<% loop BlogSections %>	
	
	

	<% if MainImage || SectionImages %>
		<% if ImageLayout = FullWidth %>
		
		<div class="container-fluid section">
			<% include BlogImages %>
		</div>
		
		<% else %>
		
		<div class="container section">
			<% include BlogImages %>
		</div>
		
		<% end_if %>
	<% end_if %>
		
		
	
	<% if Content %>
	<div class="container section">
		<div class="row">
			
			<div class="col-md-8 col-md-offset-2">
		
				$Content
				
			</div>
		
		</div>
	</div>
	<% end_if %>
	
	

<% end_loop %>


<div class="container section">
	
	<div class="row">
		<div class="col-md-12">
			<hr> 
			$CommentsForm
		</div>
	</div>
	
</div>



<div class="container section">
	
	<div class="row center">
		<div class="col-md-8 col-md-offset-2">
			<hr>
			<h3>Keep reading</h3>
		</div>
	</div>
	
</div>

<% loop getBlogPosts %>

	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 box grid-item
		<% if ThumbnailImage %> dark<% end_if %>"
		<% if ThumbnailImage %> style="background-image: url($ThumbnailImage.URL);"<% end_if %>>

		<% include PostSummary %>

	</div>
	
<% end_loop %>
