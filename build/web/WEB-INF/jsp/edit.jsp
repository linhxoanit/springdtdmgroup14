<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
	WELCOME TO ICSSE 2017
</title>
        <link href="<c:url value="/resources/css/Menu.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/WebResource.css" />" rel="stylesheet"  class="Telerik_stylesheet">
        <link href="<c:url value="/resources/css/WebResource_002.css" />" rel="stylesheet" class="Telerik_stylesheet">
        <link href="<c:url value="/resources/css/WebResource_003.css" />" rel="stylesheet" class="Telerik_stylesheet">
        <link href="<c:url value="/resources/css/default.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/lightbox.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/mainPortlets.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/nivo-slider.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/search_Article.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/show_img.css" />" rel="stylesheet">
        
        <script src="<c:url value="/resources/ckeditor/ckeditor.js"/>"></script>
        <script src="<c:url value="/resources/js/Common.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/PagingContent.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/Telerik.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/WebResource.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery-1.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jquery.js"/>"></script>
        <script src="<c:url value="/resources/js/jsdebug.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jsdebug_002.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jsdebug_003.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/jsdebug_004.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/resources/js/lightbox.js"/>" type="text/javascript"></script>
        
    <script language="javascript" type="text/javascript">
        function SearchProcess(event) {
            if (event.keyCode == 13) {
                OnSearch(document.getElementById('txtSearchArticle').value);
                return false;
            }
            return true;
        }
        function OnSearch(query) {
            PSCPortal.Services.CMS.SearchAndPaging(query, currentPage, OnSearchSuccess, OnSearchFailed);
        }

        function OnSearchSuccess(results, context, methodName) {
            var position = results.indexOf('_');
            totalRecords = results.substring(0, position);
            results = results.substring(position + 1);
            LoadContentAndPaging(results);
        }
        function OnSearchFailed(results, context, methodName) {
        }

        function retitleUrl(str) {
            str = str.replace(/^\s+|\s+$/g, ''); // trim
            str = str.toLowerCase();
            // remove accents, swap ñ for n, etc
            var from = "àáảãạăằắẳẵặâầấẩẫậđèéẻẽẹêềếểễệìíỉĩịòóỏõọôồốổỗộơờớởỡợùúủũụưừứửữựỳýỷỹỵ·/_,:;";
            var to = "aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyy------";
            for (var i = 0, l = from.length ; i < l ; i++) {
                str = str.replace(new RegExp(from.charAt(i), 'g'), to.charAt(i));
            }
            str = str.replace(/[^a-z0-9 -]/g, '') // remove invalid chars
              .replace(/\s+/g, '-') // collapse whitespace and replace by -
              .replace(/-+/g, '-'); // collapse dashes
            return str;
        };

        function popunder() {
            $('a').not('[href^="http"],[href^="https"],[href^="mailto:"],[href^="#"]').each(function () {
                $(this).attr('href', function (index, value) {
                    if (value != undefined) {
                        var index = value.indexOf("Default.aspx");
                        if (index >= 0)
                            return value = "/" + value.substring(index, value.length);
                    }
                });
            });
            var articleId = '' != '' ? '' : '';
            var topicId = '' != '' ? '' : '';
            var moduleId = '' != '' ? '' : '';
            if (articleId != '') {
                if (window.history.state == null) {
                    if (articleId.indexOf("/") > -1)
                        articleId = articleId.substr(0, articleId.indexOf("/"));
                    window.history.replaceState({ ArticleId: articleId }, "ArticleId", "/ArticleId/" + articleId + "/" + retitleUrl(''));
                }
            }
            if (topicId != '') {
                if (window.history.state == null) {
                    if (topicId.indexOf("/") > -1)
                        topicId = topicId.substr(0, topicId.indexOf("/"));
                    window.history.replaceState({ TopicId: topicId }, "TopicId", "/TopicId/" + topicId + "/" + retitleUrl(''));
                }
            }
            
        }
    </script>


</head>
<body class="body" onload="popunder();">
        
<div>
<input name="RadScriptManager1_TSM" id="RadScriptManager1_TSM" value=";;System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35:vi-VN:509f92a1-e5fd-464f-a450-13846a6c973b:ea597d4b:b25378d2;Telerik.Web.UI, Version=2011.1.315.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4:vi-VN:e4ca4719-c559-4761-8501-9be20bbda1fe:16e4e7cd:874f8ea2:f7645509:24ee1bba:f46195d3:19620875:490a9d4e:bd8f85e4:e330518b:1e771326:c8618e41" type="hidden">
<input name="__EVENTTARGET" id="__EVENTTARGET" value="" type="hidden">
<input name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" type="hidden">
<input name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPaA8FDzhkNDg4YzY5N2Q3YzA0MRgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAgURUmFkV2luZG93TWFuYWdlcjEFOmN0bDA2JHBvcnRsZXRfODAwODg2YTgtY2NiNS00MGRkLTgxM2EtMmMwMmFjMGQyZTkyJFJhZE1lbnUxQqyT80a6pJe92CkS4NB4t/ua3w==" type="hidden">
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>
<script type="text/javascript">
//<![CDATA[
if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
//]]>
</script>
<div>

	<input name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334" type="hidden">
</div>
        <div id="RadWindowManager1" style="display:none;">
	<!-- 2011.1.315.35 --><div id="RadWindowManager1_alerttemplate" style="display:none;">
		<div class="rwDialogPopup radalert">			
			<div class="rwDialogText">
			{1}				
			</div>
			
			<div>
				<a onclick="$find('{0}').close(true);" class="rwPopupButton" href="javascript:void(0);">
					<span class="rwOuterSpan">
						<span class="rwInnerSpan">##LOC[OK]##</span>
					</span>
				</a>				
			</div>
		</div>
		</div><div id="RadWindowManager1_prompttemplate" style="display:none;">
		 <div class="rwDialogPopup radprompt">			
			    <div class="rwDialogText">
			    {1}				
			    </div>		
			    <div>
				    <script type="text/javascript">
				    function RadWindowprompt_detectenter(id, ev, input)
				    {							
					    if (!ev) ev = window.event;                
					    if (ev.keyCode == 13)
					    {															        
					        var but = input.parentNode.parentNode.getElementsByTagName("A")[0];					        
					        if (but)
						    {							
							    if (but.click) but.click();
							    else if (but.onclick)
							    {
							        but.focus(); var click = but.onclick; but.onclick = null; if (click) click.call(but);							 
							    }
						    }
					       return false;
					    } 
					    else return true;
				    }	 
				    </script>
				    <input title="Eneter Value" onkeydown="return RadWindowprompt_detectenter('{0}', event, this);" class="rwDialogInput" value="{2}" type="text">
			    </div>
			    <div>
				    <a onclick="$find('{0}').close(this.parentNode.parentNode.getElementsByTagName('input')[0].value);" class="rwPopupButton" href="javascript:void(0);"><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[OK]##</span></span></a>
				    <a onclick="$find('{0}').close(null);" class="rwPopupButton" href="javascript:void(0);"><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[Cancel]##</span></span></a>
			    </div>
		    </div>				       
		</div><div id="RadWindowManager1_confirmtemplate" style="display:none;">
		<div class="rwDialogPopup radconfirm">			
			<div class="rwDialogText">
			{1}				
			</div>						
			<div>
				<a onclick="$find('{0}').close(true);" class="rwPopupButton" href="javascript:void(0);"><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[OK]##</span></span></a>
				<a onclick="$find('{0}').close(false);" class="rwPopupButton" href="javascript:void(0);"><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[Cancel]##</span></span></a>
			</div>
		</div>		
		</div><input id="RadWindowManager1_ClientState" name="RadWindowManager1_ClientState" type="hidden">
</div>
        <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('RadScriptManager1', 'form1', [], [], [], 90, '');
//]]>
</script>

<script language="javascript" type="text/javascript">
    function SearchProcess(event) {
        if (event.keyCode == 13) {
            OnSearch(document.getElementById('txtSearchArticle').value);
            return false;
        }
        return true;
    }
    function OnSearch(query) {
        PSCPortal.Services.CMS.SearchAndPaging(query, currentPage, OnSearchSuccess, OnSearchFailed);
    }

    function OnSearchSuccess(results, context, methodName) {
        var position = results.indexOf('_');
        totalRecords = results.substring(0, position);
        results = results.substring(position + 1);
        LoadContentAndPaging(results);
    }
    function OnSearchFailed(results, context, methodName) {
    }


</script>
<div class="gray">
    <div class="wrapper">
        <table style="border-collapse:collapse;" border="0" cellspacing="0" cellpadding="0">
	<tbody>
            <jsp:include page = "header.jsp"></jsp:include>
		
	<tr valign="top">
		<td><div id="pnCenter">
			<div id="pnCenterDisplay" style="float:left">
				<div id="ctl06_portlet_43f9ded1-4c3b-4b8b-8d8a-01a3ec30711c" style="float:left;"><div>
					<style>
</style>
<div id="main">
<div id="head">
</div>
<div id="head-link">
</div>
<div id="left">
</div>
<div id="content">
</div>
<div id="right">
</div>
<div id="footer">
</div>
</div>
</div></div><div id="ctl06_portlet_a956cccc-dea3-4440-82a1-2684967a114f" style="float:left;"><div>
        <p class="MsoNormal" style="margin: 6pt 0cm 0.0001pt; text-align: justify;"></p>
    <form method="post" commandName="getedit" action="xuly">
       <table style="text-align: justify;">
                        <tbody>
                            <tr>
                               
                               <textarea  name = "getedit" id ="ed" class="form-textarea"></textarea>
                                 <script>
                                   CKEDITOR.replace('ed');
                               </script>
                                
                            </tr>
                            <tr><td></td><td>
                                <input type="hidden" name="command" value="insert">
                                <input type="submit" value="Submit">
                                
                            </td></tr>
                        </tbody>
                    </table>
        
        <br>
        <br>       
        </form>
				</div></div>
			</div>
		</div></td>
		
	</tr>
       
	<jsp:include page = "footer.jsp"></jsp:include>
    </tbody></table>
    </div>
</div>

    

<script type="text/javascript">
//<![CDATA[
Sys.Application.add_init(function() {
    $create(Telerik.Web.UI.RadWindowManager, 
{"clientStateFieldID":"RadWindowManager1_ClientState","formID":"form1","iconUrl":"","minimizeIconUrl":"","name":"RadWindowManager1","skin":"Default","windowControls":"[]"},
 null, null, $get("RadWindowManager1"));
});
Sys.Application.add_init(function() {
    $create(Telerik.Web.UI.RadMenu, 
{"_childListElementCssClass":null,"_skin":"Green","attributes":{},"clientStateFieldID":"ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState","collapseAnimation":"{\"duration\":450}","expandAnimation":"{\"duration\":450}","itemData":[{"navigateUrl":"~/Default.aspx?PageId=8cb7e0c5-10f3-438b-8881-a74c24b373e3"},{"items":[{"navigateUrl":"~/Default.aspx?ArticleId=f9111384-c9ad-46ac-ba10-037bf3d691a4"},{"navigateUrl":"~/Default.aspx?ArticleId=c8018710-9562-44c6-bef0-2a0f22e73f6b"},{"navigateUrl":"~/Default.aspx?ArticleId=dd21088d-cb55-4f9d-ac9c-73553c715cae"}],"navigateUrl":"#"},{"navigateUrl":"~/Default.aspx?ArticleId=fc8c1223-a9d2-46b5-9db3-665c778f0ac9"},{"navigateUrl":"~/Default.aspx?ArticleId=945864b5-165f-45a3-8e75-a9ba5ac1f9ef"},{"navigateUrl":"~/Default.aspx?ArticleId=707e0e24-5220-4821-a40f-4041eb76cc1a"},{"navigateUrl":"~/Default.aspx?ArticleId=be204435-0615-4fc3-aa86-392d871decc8"},{"navigateUrl":"#"},{"navigateUrl":"~/Default.aspx?ArticleId=242b6486-aeb4-472f-b74f-779069bbd957"},{"navigateUrl":"~/Default.aspx?ArticleId=b4031ebe-e802-4402-a49a-5769943872a5"}]},
 null, null, 
$get("ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu"));
});
//]]>
</script>


</body></html>
