<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Spring Slots</title>
		<link type="text/css" href="css/bootstrap.min.css" rel="stylesheet" media="all">
		<link type="text/css" href="css/style.css" rel="stylesheet" media="all">
	</head>
	<body>
		<div class="container fill">
			<div class="row">
				<div class="span12 centered-text">
					<h1 id="head-title">Spring <span>Slots</span></h1>
					<p><small><em>What happens in SpringOne doesn't have to stay in SpringOne.</em></small></p>
					<img id="spring-logo" src="img/springone-logo.gif" atl="SpringOne 2GX">
					<p class="lead">Welcome to Spring Slots!  Take a lucky spin.  You will win a free virtual hoodie <br />if you get a lucky number 7 on any of the below slots.</p>
					<div class="slot-panel">
						<ul class="slot-list">
							<li><img src="img/lucky-seven.gif" atl="Lucky Number 7!"></li>
							<li><img src="img/10gen.gif" alt="10gen"></li>
							<li><img src="img/appdynamics.gif" atl="AppDynamics"></li>
							<li><img src="img/azul.gif" atl="Azul"></li>
							<li><img src="img/c24.gif" atl="C24"></li>
							<li><img src="img/cloud-foundry.gif" atl="Cloud Foundry"></li>
							<li><img src="img/emc.gif" atl="EMC"></li>
							<li><img src="img/neo4j.gif" atl="Neo4j"></li>
							<li><img src="img/splunk.gif" atl="Splunk"></li>
							<li><img src="img/spring-communities.gif" atl="Spring Communities"></li>
							<li><img src="img/spring-source.gif" atl="Spring Source"></li>
							<li><img src="img/spring-university.gif" atl="Spring University"></li>
							<li><img src="img/typesafe.gif" atl="Typesafe"></li>
							<li><img src="img/vfabric.gif" atl="vFabric"></li>
						</ul>
						<div class="row">
							<div class="span12 centered-text">
								<button class="btn btn-large btn-success" id="playButton" type="button">Spin</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div id="myModal" class="modal hide fade">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h3>You Have Officially Been Pimped!</h3>
			</div>
			<div class="modal-body">
				<p class="left-align-text">Congratulations!  You are now part of the elite club that now owns a virtual SpringOne hoodie (AKA: a beautiful digital image of a hoodie). <br />  Please enjoy it responsibly.</p>
				<img src="img/hoodie.gif" atl="SpringOne Hoodie">
			</div>
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn">Close</a>
			</div>
		</div>
		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
		<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery.jSlots.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" charset="utf-8">  
			$('.slot-panel .slot-list').jSlots({
				number : 3,
				spinner : '#playButton',
				easing : 'easeOutSine',
				winnerNumber : 1,
				onWin : function(winCount, winners, finalNumbers) {
					$('#myModal').modal('show');
				}
			});
		</script>
	</body>
</html>