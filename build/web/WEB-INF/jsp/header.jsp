<%-- 
    Document   : header
    Created on : Apr 21, 2017, 2:06:22 PM
    Author     : DucLinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <tr>
		<td colspan="2"><div id="pnTop">
			<div id="pnTopDisplay" style="width:1000px;float:left">
				<div id="ctl06_portlet_83a3e05a-eb99-4512-bd1a-5af90706fcf3" style="width:574px;float:left"><div>
					<div class="P_top">
<div class="P_logo">
<div class="anh_logo"><img alt="" src="resources/image/BannerHoinghiquoctesua.jpg" style="width: 800px; height: 188px;"><br>
</div>
<div class="name_ute">
</div>
</div>
</div>

				</div></div><div id="ctl06_portlet_6299a742-1878-4325-8536-4faefa3c1b4c" style="width:199px;float:right"><div>
					<div class="search_phong"><input class="bgsearch_phong" id="txtSearchArticle" onkeydown="return SearchProcess(event);" type="text"><input class="btsearch_phong" onclick="OnSearch(document.getElementById('txtSearchArticle').value);" type="button"> </div>
<div class="link_trang"><a href="http://icsse2017.hcmute.edu.vn/">http://icsse2017.hcmute.edu.vn</a></div>

				</div></div><div id="ctl06_portlet_e28a24d5-befe-4213-a3d5-2e1ebcb2a71e" style="width:1000px;float:left"><div>

<div class="container" style="height:350px;">
    <div class="slider-wrapper theme-default">
        <div id="slider" class="nivoSlider" style="height: 350px;">
          
        <a href="" target="_blank" class="nivo-imageLink" style="display: none;">
                <img src="resources/image/HNQT3.jpg" title="" style="display: none; height: 350px;"></a>
    
        <a href="" target="_blank" class="nivo-imageLink" style="display: none;">
                <img src="resources/image/HNQT2.jpg" title="" style="height: 350px; width: 1000px; visibility: hidden; display: inline;"></a>
    
        <a href="" target="_blank" class="nivo-imageLink" style="display: block;">
                <img src="resources/image/HNQT1.jpg" title="" style="height: 350px; width: 1000px; visibility: hidden; display: inline;"></a
        </div>
</div>
<script>
    $(document).ready(function(){
        $(".nivoSlider").nivoSlider({
            effect: 'random',
            slices: 15,
            boxCols: 8,
            boxRows: 4,
            animSpeed: 500,
            pauseTime: 3000,
            startSlide: 0,
            directionNav: true,
            controlNav: true,
            controlNavThumbs: false,
            pauseOnHover: true,
            manualAdvance: false,
            prevText: 'Prev',
            nextText: 'Next',
            randomStart: false,
            beforeChange: function () { },
            afterChange: function () { },
            slideshowEnd: function () { },
            lastSlide: function () { },
            afterLoad: function () { }
        });
        $('.nivoSlider').css('height', '350px');
        $('.nivoSlider img').css('height', '350px');
    })
   
</script>
				</div></div><div id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92" style="padding:10px 0px 0px 0px;width:1000px;float:left"><div>
					
<div id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu" class="RadMenu RadMenu_Green rmSized" style="height:40px;z-index: 1; width: 100%;">
						<ul class="rmRootGroup rmHorizontal">
							<li class="rmItem rmFirst"><a href="<%=request.getContextPath()%>/index.htm" class="rmLink rmRootLink"><span class="rmText">Home</span></a></li>
                                                        <li class="rmItem "><a href="#" class="rmLink rmRootLink"><span class="rmText rmExpandDown">About</span></a>
                                                            <div class="rmSlide">
								<ul class="rmVertical rmGroup rmLevel1">
									<li class="rmItem rmFirst"><a href="#" class="rmLink"><span class="rmText">icsse</span></a></li>
                                                                        <li class="rmItem "><a href="#" class="rmLink"><span class="rmText">HCMUTE</span></a></li>
                                                                        <li class="rmItem rmLast"><a href="#" class="rmLink"><span class="rmText">Committees</span></a></li>
								</ul>
                                                            </div></li>
                                                        <li class="rmItem "><a href="#" class="rmLink rmRootLink"><span class="rmText">Call for papers</span></a></li>
                                                        <li class="rmItem "><a href="#" class="rmLink rmRootLink"><span class="rmText">Submission</span></a></li>
                                                        <li class="rmItem "><a href="#" class="rmLink rmRootLink"><span class="rmText">Registration</span></a></li>
                                                        <li class="rmItem "><a href="#" class="rmLink rmRootLink"><span class="rmText">Keynote Speakers</span></a></li>
                                                        <li class="rmItem "><a href="#" class="rmLink rmRootLink"><span class="rmText">Program</span></a></li>
                                                        <li class="rmItem "><a href="#" class="rmLink rmRootLink"><span class="rmText">Venue &amp; Hotel</span></a></li>
                                                        <li class="rmItem"><a href="#" class="rmLink rmRootLink"><span class="rmText">Contact</span></a></li>
                                                        <li class="rmItem rmLast"><a href="<%= request.getContextPath() %>/edit.htm" class="rmLink rmRootLink"><span class="rmText">Edit</span></a></li>
						</ul><input id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState" name="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState" autocomplete="off" type="hidden">
					</div>

				</div></div>
			</div>
		</div></td>
	</tr>
    </body>
</html>
