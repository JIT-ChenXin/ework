<link rel="stylesheet" type="text/css" href="css/sharemess.css" />
<div class="box-header">
	<h3 class="box-title">我共享的</h3>
	<a class="btn btn-sm btn-default thisrefresh" href="javascript:void(0);" title="刷新" style="padding: 5px;margin-top: -8px;">
		<span class="glyphicon glyphicon-refresh"></span>
	</a>
	<div class="box-tools">
		<div class="input-group" style="width: 150px;">
			<input type="text" class="form-control input-sm searchbaseKey" placeholder="查找..." value="${(baseKey)!''}"/>
			<div class="input-group-btn">
				<a class="btn btn-sm btn-default searchbaseKeySumbit"> 
					<span class="glyphicon glyphicon-search"></span>
				</a>
			</div>
		</div>
	</div>
</div>
<div style="margin-bottom:20px;">
	<#if dus?size gt 0>
	<#list dus as du>
	<div class="sharemess">
		<div class="sharecontent">
			<div>
				<div class="sharecontent-left" style="height: 30px;">
					你将联系人:
					<a href="javascript:void(0);" 
						class="othershow"
						title="${du.director.userName}"
						thistel="${du.director.phoneNumber}" 
						thissex="${du.director.sex}"
						thiscompany="${(du.director.companyname)!'空的'}"  >
						<#if du.director.imgPath?? && du.director.imgPath!=''  >
							<img class="img-circle" src="/image/${du.director.imgPath}" style="width:24px;height:24px"/>
						<#else>
							<img class="img-circle" src="images/timg.jpg" alt="images" style="width:24px;height:24px"/>
						</#if>
						<span> ${du.director.userName},${du.director.phoneNumber}</span>
					</a>
					共享给了:
						<a href="javascript:void(0);" 
							class="usershow"
							title="${du.user.realName}"
							thisdept="${du.user.dept.deptName}"
							thisrole="${du.user.role.roleName}"
							thistel="${(du.user.userTel)!'空的'}">
							<#if du.user.imgPath?? && du.user.imgPath!=''  >
								<img class="img-circle" src="/image/${du.user.imgPath}" style="width:24px;height:24px"/>
							<#else>
								<img class="img-circle" src="images/timg.jpg" alt="images" style="width:24px;height:24px"/>
							</#if>
							${du.user.realName}
						</a>
				</div>
				<div class="share-right" style="height:30px;">
					<div style="display: inline-block;">
						<span>状态:</span>
						<#if du.handle==false>
							<span class="label label-default">未处理</span>
						<#else>
							<span class="label label-success">已处理</span>
						</#if>
					</div>
					<p style="float: right;margin:0;">${du.sharetime}</p>
				</div>
			</div>
		</div>
	</div>
	</#list>
	<#else>
	<table class="table table-hover table-striped">
		<tr>
			<td colspan="7" style="text-align: center;background: #eee;">没能找到相关消息~~~</td>
		</tr>
	</table>
	</#if>
</div>
<#include "/common/paging.ftl"/>
<script>
$('.searchbaseKeySumbit').on('click', function() {
	var baseKey = $('.searchbaseKey').val();
	$('.thistable').load('${url}?baseKey='+baseKey+'${(catalog)!''}');
});
</script>
<script type="text/javascript" src="js/usershow.js"></script>