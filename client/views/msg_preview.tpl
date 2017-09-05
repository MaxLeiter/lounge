{{#preview}}
<div class="toggle-content toggle-type-{{type}}{{#if shown}} show{{/if}}">
	{{#equal type "image"}}
		<a class="toggle-thumbnail" href="{{link}}" target="_blank" rel="noopener">
			<img src="{{thumb}}">
		</a>
	{{/equal}}
	{{#equal type "youtube"}}
		<div class="toggle-video-wrapper">
			<iframe class="toggle-video" src="https://www.youtube.com/embed/{{embed}}" frameborder="0" allowfullscreen></iframe>
		</div>
	{{/equal}}
	{{#equal type "gfycat"}}
		<div class="toggle-video-wrapper">
			<iframe class="toggle-video" src="https://www.gfycat.com/ifr/{{embed}}" frameborder="0" allowfullscreen></iframe>
		</div>
	{{/equal}}
	{{#equal type "twitter"}}
		test
		{{type.embed}}
	{{/equal}}
	{{#equal type "link"}}
		<a class="toggle-text" href="{{link}}" target="_blank" rel="noopener">
			<div class="head" title="{{head}}">{{head}}</div>
			<div class="body" title="{{body}}">{{body}}</div>
		</a>
		{{#if thumb}}
			<a class="toggle-thumbnail" href="{{link}}" target="_blank" rel="noopener">
				<img src="{{thumb}}" class="thumb">
			</a>
		{{/if}}
	{{/equal}}
</div>
{{/preview}}
