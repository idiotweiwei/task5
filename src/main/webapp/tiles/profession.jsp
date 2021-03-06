<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="utf-8" name="viewport" content="width=device-width"
		initial-scale=1 maximum-scale=1 minimum-scale=1 user-scalable=no>
		<title>task8-three</title>
		<link rel="stylesheet" href="../task8-three.css">
		<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js">
		</script>
		<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css"
			rel="stylesheet">
		<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js">
		</script>
	</head>
	<body>

<!--main-->
		<main>
			<ul class="main-top">
				<p>方向：</p>
				<li class="path">
					<a href="#">全部</a>
				</li>
				<li class="path">
					<a href="#help-1">前端开发</a>
				</li>
				<li class="path">
					<a href="#help-2">后端开发</a>
				</li>
				<li class="path">
					<a href="#help-3">移动开发</a>
				</li>
				<li class="path">
					<a href="#help-4">整站开发</a>
				</li>
				<li class="path">
					<a href="#help-5">运营维护</a>
				</li>
			</ul>
			<p class="form-title"><a name="help-1"></a>前端开发方向</p>
			<div class="content">
				<c:forEach items="${listfront}" var="front" begin="0" end="1">
				<div class="form">
					<div class="hover">
						<%--<div class="hover1">iOS工程师</div>--%>
						<%--<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOSX操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必争的资源。--%>
						<%--</div>--%>
						<div class="hover1">${front.occupation}</div>
						<div class="hover2">${front.placement}</div>
					</div>
					<div class="header">
						<img src="${pageContext.request.contextPath}/image/three/toux.png">
						<div>
							<%--<h4>Web前端开发师</h4>--%>
							<%--Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等--%>
							<%--各种Web技术进行产品的开发。--%>
							<h4>${front.occupation}</h4>
							${front.placement}
						</div>
					</div>
					<div class="list">
						<div class="list-top">
							<div class="list-top-1">
								<div class="list-top-1-left">
									门槛
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
								<div class="list-top-1-right">
									难易程度
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
							</div>
							<div class="list-top-2">
								<div class="list-top-2-left">
									成长周期
									<p>1-3
										<b>年</b>
									</p>
								</div>
								<div class="list-top-2-right">
									稀缺程度
									<%--<p>345--%>
										<%--<b>家公司需要</b>--%>
									<%--</p>--%>
									<p>${front.companies}
										<b>家公司需要</b>
									</p>
								</div>
							</div>
						</div>
							<div class="list-center">
								<div class="list-center-left">薪资待遇</div>
								<div class="list-center-right">
									<div class="list-center-right-text">
										<p>0-1年</p>
										<p>5k-10k/月</p>
									</div>
									<div class="list-center-right-text">
										<p>1-3年</p>
										<p>10k-20k/月</p>
									</div>
									<div class="list-center-right-end">
										<p>3-5年</p>
										<p>20k-50k/月</p>
									</div>
								</div>
							</div>
							<div class="list-end">
								<%--<p>有<b>286</b>人正在学</p>--%>
								<p>有
									<b>${front.students}</b>
									正在学
								</p>
							</div>
					</div>
					<div class="footer">
						<%--提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础--%>
						${front.point}
					</div>
				</div>
				</c:forEach>
				<%--<div class="form">--%>
					<%--<div class="hover">--%>
						<%--<div class="hover1">iOS工程师</div>--%>
						<%--<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOS--%>
							<%--X操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系--%>
							<%--统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，--%>
							<%--有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才--%>
							<%--培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必--%>
							<%--争的资源。--%>
						<%--</div>--%>
					<%--</div>--%>
					<%--<div class="header">--%>
						<%--<img src="${pageContext.request.contextPath}/image/three/toux.png">--%>
						<%--<div>--%>
							<%--<h4>Web前端开发师</h4>--%>
							<%--Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等--%>
							<%--各种Web技术进行产品的开发。--%>
						<%--</div>--%>
					<%--</div>--%>
					<%--<div class="list">--%>
						<%--<div class="list-top">--%>
							<%--<div class="list-top-1">--%>
								<%--<div class="list-top-1-left">--%>
									<%--门槛--%>
									<%--<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">--%>
								<%--</div>--%>
								<%--<div class="list-top-1-right">--%>
									<%--难易程度--%>
									<%--<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">--%>
									<%--<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">--%>
								<%--</div>--%>
							<%--</div>--%>
							<%--<div class="list-top-2">--%>
								<%--<div class="list-top-2-left">--%>
									<%--成长周期--%>
									<%--<p>1-3--%>
										<%--<b>年</b>--%>
									<%--</p>--%>
								<%--</div>--%>
								<%--<div class="list-top-2-right">--%>
									<%--稀缺程度--%>
									<%--<p>345--%>
										<%--<b>家公司需要</b>--%>
									<%--</p>--%>
								<%--</div>--%>
							<%--</div>--%>
						<%--</div>--%>
							<%--<div class="list-center">--%>
								<%--<div class="list-center-left">薪资待遇</div>--%>
								<%--<div class="list-center-right">--%>
									<%--<div class="list-center-right-text">--%>
										<%--<p>0-1年</p>--%>
										<%--<p>5k-10k/月</p>--%>
									<%--</div>--%>
									<%--<div class="list-center-right-text">--%>
										<%--<p>1-3年</p>--%>
										<%--<p>10k-20k/月</p>--%>
									<%--</div>--%>
									<%--<div class="list-center-right-end">--%>
										<%--<p>3-5年</p>--%>
										<%--<p>20k-50k/月</p>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</div>--%>
							<%--<div class="list-end">--%>
								<%--<p>有<b>286</b>人正在学</p>--%>
							<%--</div>--%>
					<%--</div>--%>
					<%--<div class="footer">--%>
						<%--提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础--%>
					<%--</div>--%>
				<%--</div>--%>
				<%--<div class="form-2">--%>
					<%--<div class="hover">--%>
						<%--<div class="hover1">iOS工程师</div>--%>
						<%--<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOS--%>
							<%--X操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系--%>
							<%--统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，--%>
							<%--有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才--%>
							<%--培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必--%>
							<%--争的资源。</div>--%>
					<%--</div>--%>
					<%--<div class="header">--%>
						<%--<img src="${pageContext.request.contextPath}/image/three/toux.png">--%>
						<%--<div>--%>
							<%--<h4>Web前端开发师</h4>--%>
							<%--Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等--%>
							<%--各种Web技术进行产品的开发。--%>
						<%--</div>--%>
					<%--</div>--%>
					<%--<div class="list">--%>
						<%--<div class="list-top">--%>
							<%--<div class="list-top-1">--%>
								<%--<div class="list-top-1-left">--%>
									<%--门槛--%>
									<%--<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">--%>
								<%--</div>--%>
								<%--<div class="list-top-1-right">--%>
									<%--难易程度--%>
									<%--<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">--%>
									<%--<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">--%>
								<%--</div>--%>
							<%--</div>--%>
							<%--<div class="list-top-2">--%>
								<%--<div class="list-top-2-left">--%>
									<%--成长周期--%>
									<%--<p>1-3--%>
										<%--<b>年</b>--%>
									<%--</p>--%>
								<%--</div>--%>
								<%--<div class="list-top-2-right">--%>
									<%--稀缺程度--%>
									<%--<p>345--%>
										<%--<b>家公司需要</b>--%>
									<%--</p>--%>
								<%--</div>--%>
							<%--</div>--%>
						<%--</div>--%>
							<%--<div class="list-center">--%>
								<%--<div class="list-center-left">薪资待遇</div>--%>
								<%--<div class="list-center-right">--%>
									<%--<div class="list-center-right-text">--%>
										<%--<p>0-1年</p>--%>
										<%--<p>5k-10k/月</p>--%>
									<%--</div>--%>
									<%--<div class="list-center-right-text">--%>
										<%--<p>1-3年</p>--%>
										<%--<p>10k-20k/月</p>--%>
									<%--</div>--%>
									<%--<div class="list-center-right-end">--%>
										<%--<p>3-5年</p>--%>
										<%--<p>20k-50k/月</p>--%>
									<%--</div>--%>
								<%--</div>--%>
							<%--</div>--%>
							<%--<div class="list-end">--%>
								<%--<p>有<b>286</b>人正在学</p>--%>
							<%--</div>--%>
					<%--</div>--%>
					<%--<div class="footer">--%>
					<%--提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础--%>
				<%--</div>--%>
				<%--</div>--%>
			</div>
			<p class="form-title"><a name="help-2"></a>后端开发方向</p>
			<div class="content">
				<c:forEach items="${listrear}" var="rear" begin="0" end="0">
				<div class="form">
					<div class="hover">
						<%--<div class="hover1">iOS工程师</div>--%>
						<%--<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOS--%>
							<%--X操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系--%>
							<%--统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，--%>
							<%--有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才--%>
							<%--培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必--%>
							<%--争的资源。--%>
						<%--</div>--%>
						<div class="hover1">${rear.occupation}</div>
						<div class="hover2">${rear.placement}</div>
					</div>
					<div class="header">
						<img src="${pageContext.request.contextPath}/image/three/toux.png">
						<div>
							<%--<h4>Web前端开发师</h4>--%>
							<%--Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等--%>
							<%--各种Web技术进行产品的开发。--%>
							<h4>${rear.occupation}</h4>
							${rear.placement}
						</div>
					</div>
					<div class="list">
						<div class="list-top">
							<div class="list-top-1">
								<div class="list-top-1-left">
									门槛
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
								<div class="list-top-1-right">
									难易程度
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
							</div>
							<div class="list-top-2">
								<div class="list-top-2-left">
									成长周期
									<p>1-3
										<b>年</b>
									</p>
								</div>
								<div class="list-top-2-right">
									稀缺程度
									<%--<p>345--%>
									<p>${rear.companies}
										<b>家公司需要</b>
									</p>
								</div>
							</div>
						</div>
							<div class="list-center">
								<div class="list-center-left">薪资待遇</div>
								<div class="list-center-right">
									<div class="list-center-right-text">
										<p>0-1年</p>
										<p>5k-10k/月</p>
									</div>
									<div class="list-center-right-text">
										<p>1-3年</p>
										<p>10k-20k/月</p>
									</div>
									<div class="list-center-right-end">
										<p>3-5年</p>
										<p>20k-50k/月</p>
									</div>
								</div>
							</div>
							<div class="list-end">
								<p>有
									<%--<b>286</b>--%>
									<b>${rear.students}</b>
									人正在学
								</p>
							</div>
					</div>
					<div class="footer">
						<%--提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础--%>
						${rear.point}
					</div>
				</div>
				</c:forEach>
				<div class="form">
					<div class="hover">
						<div class="hover1">iOS工程师</div>
						<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOS
							X操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系
							统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，
							有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才
							培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必
							争的资源。
						</div>
					</div>
					<div class="header">
						<img src="${pageContext.request.contextPath}/image/three/toux.png">
						<div>
							<h4>Web前端开发师</h4>
							Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等
							各种Web技术进行产品的开发。
						</div>
					</div>
					<div class="list">
						<div class="list-top">
							<div class="list-top-1">
								<div class="list-top-1-left">
									门槛
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
								<div class="list-top-1-right">
									难易程度
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
							</div>
							<div class="list-top-2">
								<div class="list-top-2-left">
									成长周期
									<p>1-3
										<b>年</b>
									</p>
								</div>
								<div class="list-top-2-right">
									稀缺程度
									<p>345
										<b>家公司需要</b>
									</p>
								</div>
							</div>
						</div>
							<div class="list-center">
								<div class="list-center-left">薪资待遇</div>
								<div class="list-center-right">
									<div class="list-center-right-text">
										<p>0-1年</p>
										<p>5k-10k/月</p>
									</div>
									<div class="list-center-right-text">
										<p>1-3年</p>
										<p>10k-20k/月</p>
									</div>
									<div class="list-center-right-end">
										<p>3-5年</p>
										<p>20k-50k/月</p>
									</div>
								</div>
							</div>
							<div class="list-end">
								<p>有<b>286</b>人正在学</p>
							</div>
					</div>
					<div class="footer">
						提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础
					</div>
				</div>
				<div class="form-2">
					<div class="hover">
						<div class="hover1">iOS工程师</div>
						<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOS
							X操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系
							统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，
							有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才
							培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必
							争的资源。</div>
					</div>
					<div class="header">
						<img src="${pageContext.request.contextPath}/image/three/toux.png">
						<div>
							<h4>Web前端开发师</h4>
							Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等
							各种Web技术进行产品的开发。
						</div>
					</div>
					<div class="list">
						<div class="list-top">
							<div class="list-top-1">
								<div class="list-top-1-left">
									门槛
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
								<div class="list-top-1-right">
									难易程度
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
							</div>
							<div class="list-top-2">
								<div class="list-top-2-left">
									成长周期
									<p>1-3
										<b>年</b>
									</p>
								</div>
								<div class="list-top-2-right">
									稀缺程度
									<p>345
										<b>家公司需要</b>
									</p>
								</div>
							</div>
						</div>
							<div class="list-center">
								<div class="list-center-left">薪资待遇</div>
								<div class="list-center-right">
									<div class="list-center-right-text">
										<p>0-1年</p>
										<p>5k-10k/月</p>
									</div>
									<div class="list-center-right-text">
										<p>1-3年</p>
										<p>10k-20k/月</p>
									</div>
									<div class="list-center-right-end">
										<p>3-5年</p>
										<p>20k-50k/月</p>
									</div>
								</div>
							</div>
							<div class="list-end">
								<p>有<b>286</b>人正在学</p>
							</div>
					</div>
					<div class="footer">
					提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础
				</div>
				</div>
			</div>
			<div class="content">
				<div class="form">
					<div class="hover">
						<div class="hover1">iOS工程师</div>
						<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOS
							X操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系
							统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，
							有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才
							培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必
							争的资源。</div>
					</div>
					<div class="header">
						<img src="${pageContext.request.contextPath}/image/three/toux.png">
						<div>
							<h4>Web前端开发师</h4>
							Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等
							各种Web技术进行产品的开发。
						</div>
					</div>
					<div class="list">
						<div class="list-top">
							<div class="list-top-1">
								<div class="list-top-1-left">
									门槛
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
								<div class="list-top-1-right">
									难易程度
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
							</div>
							<div class="list-top-2">
								<div class="list-top-2-left">
									成长周期
									<p>1-3
										<b>年</b>
									</p>
								</div>
								<div class="list-top-2-right">
									稀缺程度
									<p>345
										<b>家公司需要</b>
									</p>
								</div>
							</div>
						</div>
							<div class="list-center">
								<div class="list-center-left">薪资待遇</div>
								<div class="list-center-right">
									<div class="list-center-right-text">
										<p>0-1年</p>
										<p>5k-10k/月</p>
									</div>
									<div class="list-center-right-text">
										<p>1-3年</p>
										<p>10k-20k/月</p>
									</div>
									<div class="list-center-right-end">
										<p>3-5年</p>
										<p>20k-50k/月</p>
									</div>
								</div>
							</div>
							<div class="list-end">
								<p>有<b>286</b>人正在学</p>
							</div>
					</div>
					<div class="footer">
						提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础
					</div>
				</div>
				<div class="form">
					<div class="hover">
						<div class="hover1">iOS工程师</div>
						<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOS
							X操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系
							统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，
							有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才
							培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必
							争的资源。
						</div>
					</div>
					<div class="header">
						<img src="${pageContext.request.contextPath}/image/three/toux.png">
						<div>
							<h4>Web前端开发师</h4>
							Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等
							各种Web技术进行产品的开发。
						</div>
					</div>
					<div class="list">
						<div class="list-top">
							<div class="list-top-1">
								<div class="list-top-1-left">
									门槛
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
								<div class="list-top-1-right">
									难易程度
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
							</div>
							<div class="list-top-2">
								<div class="list-top-2-left">
									成长周期
									<p>1-3
										<b>年</b>
									</p>
								</div>
								<div class="list-top-2-right">
									稀缺程度
									<p>345
										<b>家公司需要</b>
									</p>
								</div>
							</div>
						</div>
							<div class="list-center">
								<div class="list-center-left">薪资待遇</div>
								<div class="list-center-right">
									<div class="list-center-right-text">
										<p>0-1年</p>
										<p>5k-10k/月</p>
									</div>
									<div class="list-center-right-text">
										<p>1-3年</p>
										<p>10k-20k/月</p>
									</div>
									<div class="list-center-right-end">
										<p>3-5年</p>
										<p>20k-50k/月</p>
									</div>
								</div>
							</div>
							<div class="list-end">
								<p>有<b>286</b>人正在学</p>
							</div>
					</div>
					<div class="footer">
						提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础
					</div>
				</div>
				<div class="none">

				</div>
			</div>
			<p class="form-title"><a name="help-5"></a>运维方向</p>
			<div class="content">
				<%--若是多余2个职业，页面显示不正常，那循环就应该把content包上--%>
				<c:forEach items="${listoperation}" var="operation" begin="0" end="0">
				<div class="form">
					<div class="hover">
						<%--<div class="hover1">iOS工程师</div>--%>
						<%--<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOS--%>
							<%--X操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系--%>
							<%--统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，--%>
							<%--有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才--%>
							<%--培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必--%>
							<%--争的资源。</div>--%>
						<div class="hover1">${operation.occupation}</div>
						<div class="hover2">${operation.placement}</div>
					</div>
					<div class="header">
						<img src="${pageContext.request.contextPath}/image/three/toux.png">
						<div>
							<%--<h4>Web前端开发师</h4>--%>
							<%--Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等--%>
							<%--各种Web技术进行产品的开发。--%>
							<h4>${operation.occupation}</h4>
							${operation.placement}
						</div>
					</div>
					<div class="list">
						<div class="list-top">
							<div class="list-top-1">
								<div class="list-top-1-left">
									门槛
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
								<div class="list-top-1-right">
									难易程度
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
							</div>
							<div class="list-top-2">
								<div class="list-top-2-left">
									成长周期
									<p>1-3
										<b>年</b>
									</p>
								</div>
								<div class="list-top-2-right">
									稀缺程度
									<%--<p>345--%>
									<p>${operation.companies}
										<b>家公司需要</b>
									</p>
								</div>
							</div>
						</div>
							<div class="list-center">
								<div class="list-center-left">薪资待遇</div>
								<div class="list-center-right">
									<div class="list-center-right-text">
										<p>0-1年</p>
										<p>5k-10k/月</p>
									</div>
									<div class="list-center-right-text">
										<p>1-3年</p>
										<p>10k-20k/月</p>
									</div>
									<div class="list-center-right-end">
										<p>3-5年</p>
										<p>20k-50k/月</p>
									</div>
								</div>
							</div>
							<div class="list-end">
								<p>有
									<%--<b>286</b>--%>
									<b>${operation.students}</b>
									人正在学
								</p>
							</div>
					</div>
					<div class="footer">
						${operation.point}
						<%--提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础--%>
					</div>
				</div>
				</c:forEach>
				<div class="form">
					<div class="hover">
						<div class="hover1">iOS工程师</div>
						<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOS
							X操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系
							统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，
							有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才
							培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必
							争的资源。
						</div>
					</div>
					<div class="header">
						<img src="${pageContext.request.contextPath}/image/three/toux.png">
						<div>
							<h4>Web前端开发师</h4>
							Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等
							各种Web技术进行产品的开发。
						</div>
					</div>
					<div class="list">
						<div class="list-top">
							<div class="list-top-1">
								<div class="list-top-1-left">
									门槛
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
								<div class="list-top-1-right">
									难易程度
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
							</div>
							<div class="list-top-2">
								<div class="list-top-2-left">
									成长周期
									<p>1-3
										<b>年</b>
									</p>
								</div>
								<div class="list-top-2-right">
									稀缺程度
									<p>345
										<b>家公司需要</b>
									</p>
								</div>
							</div>
						</div>
							<div class="list-center">
								<div class="list-center-left">薪资待遇</div>
								<div class="list-center-right">
									<div class="list-center-right-text">
										<p>0-1年</p>
										<p>5k-10k/月</p>
									</div>
									<div class="list-center-right-text">
										<p>1-3年</p>
										<p>10k-20k/月</p>
									</div>
									<div class="list-center-right-end">
										<p>3-5年</p>
										<p>20k-50k/月</p>
									</div>
								</div>
							</div>
							<div class="list-end">
								<p>有<b>286</b>人正在学</p>
							</div>
					</div>
					<div class="footer">
						提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础
					</div>
				</div>
				<div class="form-2">
					<div class="hover">
						<div class="hover1">iOS工程师</div>
						<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOS
							X操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系
							统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，
							有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才
							培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必
							争的资源。</div>
					</div>
					<div class="header">
						<img src="${pageContext.request.contextPath}/image/three/toux.png">
						<div>
							<h4>Web前端开发师</h4>
							Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等
							各种Web技术进行产品的开发。
						</div>
					</div>
					<div class="list">
						<div class="list-top">
							<div class="list-top-1">
								<div class="list-top-1-left">
									门槛
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
								<div class="list-top-1-right">
									难易程度
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
							</div>
							<div class="list-top-2">
								<div class="list-top-2-left">
									成长周期
									<p>1-3
										<b>年</b>
									</p>
								</div>
								<div class="list-top-2-right">
									稀缺程度
									<p>345
										<b>家公司需要</b>
									</p>
								</div>
							</div>
						</div>
							<div class="list-center">
								<div class="list-center-left">薪资待遇</div>
								<div class="list-center-right">
									<div class="list-center-right-text">
										<p>0-1年</p>
										<p>5k-10k/月</p>
									</div>
									<div class="list-center-right-text">
										<p>1-3年</p>
										<p>10k-20k/月</p>
									</div>
									<div class="list-center-right-end">
										<p>3-5年</p>
										<p>20k-50k/月</p>
									</div>
								</div>
							</div>
							<div class="list-end">
								<p>有<b>286</b>人正在学</p>
							</div>
					</div>
					<div class="footer">
					提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础
				</div>
				</div>
			</div>
			<p class="form-title"><a name="help-5"></a>运维方向</p>
			<div class="content">
				<div class="form">
					<div class="hover">
						<div class="hover1">iOS工程师</div>
						<div class="hover2">iOS是由苹果公司开发的移动操作系统，iOS与苹果的MacOS
							X操作系统一样，也是以Darwin为基础的，因此同样属于类Unix 的商业操作系
							统。国内iOS开发起步相对较晚，人才培养机制更是远远跟不上市场发展速度，
							有限的iOS开发人才成了国内企业必争的资源。国内iOS开发起步相对较晚，人才
							培养机制更是远远跟不上市场发展速度，有限的iOS开发人才成了国内企业必
							争的资源。</div>
					</div>
					<div class="header">
						<img src="${pageContext.request.contextPath}/image/three/toux.png">
						<div>
							<h4>Web前端开发师</h4>
							Web前端开发工程师，主要职责是利用(X)HTML /CSS /JavaScript /flash等
							各种Web技术进行产品的开发。
						</div>
					</div>
					<div class="list">
						<div class="list-top">
							<div class="list-top-1">
								<div class="list-top-1-left">
									门槛
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
								<div class="list-top-1-right">
									难易程度
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
									<img src="${pageContext.request.contextPath}/image/three/xx.png" width="10" height="10">
								</div>
							</div>
							<div class="list-top-2">
								<div class="list-top-2-left">
									成长周期
									<p>1-3
										<b>年</b>
									</p>
								</div>
								<div class="list-top-2-right">
									稀缺程度
									<p>345
										<b>家公司需要</b>
									</p>
								</div>
							</div>
						</div>
							<div class="list-center">
								<div class="list-center-left">薪资待遇</div>
								<div class="list-center-right">
									<div class="list-center-right-text">
										<p>0-1年</p>
										<p>5k-10k/月</p>
									</div>
									<div class="list-center-right-text">
										<p>1-3年</p>
										<p>10k-20k/月</p>
									</div>
									<div class="list-center-right-end">
										<p>3-5年</p>
										<p>20k-50k/月</p>
									</div>
								</div>
							</div>
							<div class="list-end">
								<p>有<b>286</b>人正在学</p>
							</div>
					</div>
					<div class="footer">
						提示：在你学习之前你应该已经掌握了xxxx、xxxx、xx等语言基础
					</div>
				</div>
				<div class="none-margin"></div>
				<div class="none"></div>
			</div>
		</main>

	</body>
</html>
