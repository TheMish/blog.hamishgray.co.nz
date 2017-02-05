<% if URLSegment = home %>


	
	<div id="banner"
		<% if BannerImage %> style="background-image: url($BannerImage.CroppedImage(2000,1000).URL);" class="row center home"
		<% else %>
			<% if SiteConfig.BrandColor %> style="background-color: #{$SiteConfig.BrandColor}" <% end_if %> 
			class="row center dark home"
		<% end_if %>>
		
		<div class="banner-inner"><div class="v-align-inner">
		
			<a class="brand" href="$BaseHref"><img src="$SiteConfig.Logo.URL" alt="$SiteConfig.Title"></a>
			$Content
			
		</div></div>
			
		
	</div>



<% else_if ClassName = BlogPost %>

	
	<% include Navigation %>
	
	
	<div id="banner" 
		<% if BannerImage %> 
			style="background-image: url($BannerImage.CroppedImage(2000,1000).URL);
			<% if SiteConfig.BrandColor %> background-color: #{$SiteConfig.BrandColor};<% end_if %> " 
			class="row center<% if BannerFullscreen %> fs<% end_if %><% if BannerLightText %> dark<% end_if %>"
		<% else %>
			class="row center dark<% if BannerFullscreen %> fs<% end_if %>" 
			<% if SiteConfig.BrandColor %> style="background-color: #{$SiteConfig.BrandColor}" <% end_if %>
		<% end_if %>>
	
		<div class="banner-inner"><div class="v-align-inner">
						
			<h1>$Title</h1>
			$Content
			
		</div></div>
			
		
		<% if BannerImage %>
		<div class="overlay"></div>
		<% end_if %>
		
	</div>
	

<% else %>

	
	<% include Navigation %>
	
	
	<div id="banner" 
		<% if BannerImage %> 
			style="background-image: url($BannerImage.CroppedImage(2000,1000).URL);<% if SiteConfig.BrandColor %> background-color: #{$SiteConfig.BrandColor};<% end_if %> " 
			class="row center<% if BannerFullscreen %> fs<% end_if %><% if BannerLightText %> dark<% end_if %>"
		<% else %>
			class="row center dark<% if BannerFullscreen %> fs<% end_if %><% if BannerLightText %> dark<% end_if %>"
		<% end_if %>>
	
		<div class="banner-inner"><div class="v-align-inner">
						
			<h1>$Title</h1>
			$Content
			
		</div></div>
			
		
		<% if BannerImage %>
		<div class="overlay"></div>
		<% end_if %>
		
	</div>
	
	
<% end_if %>