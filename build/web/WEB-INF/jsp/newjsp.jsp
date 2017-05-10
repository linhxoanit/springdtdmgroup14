<%-- 
    Document   : newjsp
    Created on : Apr 27, 2017, 5:57:07 PM
    Author     : DucLinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
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
    <body>
        <form method="post" commandName="getedit" action="xuly">
       <table style="text-align: justify;">
                        <tbody>
                            <tr>
                               
                               <textarea  name = "getedit" id ="ed" class="form-textarea"></textarea>
                                 
                                
                            </tr>
                            <tr><td></td><td>
                                <!input type="hidden" name="command" value="insert">
                                <input type="submit" value="Submit">
                                
                            </td></tr>
                        </tbody>
                    </table>
        
        <br>
        <br>       
        </form>
			
    </body>
</html>
