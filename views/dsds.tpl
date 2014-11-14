% include('header.tpl', page='dsds')

<div class="container" style="margin: 20px auto;">
%  num_dsds = len(results["result"])
<p class="lead" style="margin-bottom: 50px">Counting <b>{{num_dsds}}</b> Data Structure Definitions in <b>{{num_endpoints}}</b> SPARQL endpoints in Linked Statistical Data</p>

<div class="container">
<dl class="dl-horizontal">
	<dt>Data Structure Definitions (DSDs)</dt>
	% for dsd in results["result"]:
	% 	dsd_uri = dsd["dsd"]["uri"]
	<dd><a href="{{dsd_uri}}" target="_blank">{{dsd_uri}}</a></dd>
	% end
</dl>
</div>

<a href="/dimensions">Back</a>

% include('footer.tpl')
