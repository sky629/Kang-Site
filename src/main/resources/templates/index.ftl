<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Kang Site</title>
<!-- <link href="../../static/css/manager/body.css" rel="stylesheet"> -->

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://unpkg.com/vue@2.4.2"></script>

</head>
	<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span9" >
				
				<br>
				<div id = "play">
					<p>
						<center>
							<iframe id="player_div" frameborder="0" allowfullscreen="1"
								 title="YouTube video player" width="800" height="600" v-bind:src="url"></iframe>
						</center>
					</p>
				
				<ul data-role="listview" data-split-icon="gear" data-split-theme="a" data-inset="true" data-filter="true" data-filter-placeholder="Search title">
					<#list realTimeChart as item>
					    <li id="li-${item.rank}"><a v-on:click="change('${item.url}')">
					    <img src="${item.icon}">
					    <h2>${item.title}</h2>
					    <p>${item.artist}</p></a>
					        <a href="#purchase" data-rel="popup" data-position-to="window" data-transition="pop" data-id="${item.rank}">add album</a>
					    </li>
				    </#list>
				  
				</ul>
				<div data-role="popup" id="purchase" data-theme="a" data-overlay-theme="b" class="ui-content" style="max-width:340px; padding-bottom:2em;">
				    <h3>내 앨범에 추가할꺼?</h3>
				<p>추가하려면 add 눌러.</p>
				    <a href="index.html" data-rel="back" class="ui-shadow ui-btn ui-corner-all ui-btn-b ui-icon-check ui-btn-icon-left ui-btn-inline ui-mini">add</a>
				    <a href="index.html" data-rel="back" class="ui-shadow ui-btn ui-corner-all ui-btn-inline ui-mini">Cancel</a>
				</div>
				
				</div>
				
				
			</div>
		</div>
	</div>
	</body>
			

<script type="text/javascript">

	var play = new Vue({
		  el: '#play',
		  data: {
		    url: '${playList}'
		  },
		  methods: {
			  change: function(item){
				  allUrl = '${playList}'
				  temp = item.split('/embed/')[1]
				  result = 'https://www.youtube.com/embed/' + temp + '?rel=0&autoplay=1;playlist=' + allUrl.split(temp)[1]
				  this.url = result
			  }
		  }
		})
	
	</script>
	
</html>