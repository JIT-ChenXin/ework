<#include "/common/commoncss.ftl"/>
<style type="text/css">
a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}

.c {
	font-weight: 900;
	color: #F55;
}

.paixu:HOVER {
	cursor: pointer;
	color: #337ab7;
}
</style>

<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">公告列表</h1>
	</div>
</div>

<div class="row" style="padding-top: 15px;">
	<div class="col-md-12 thistable">
		<!--id="container"-->
		<#include "informlistpaging.ftl"/>
	</div>
</div>