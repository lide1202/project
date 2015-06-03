<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>首页</title>
    
        <!-- Bootstrap framework -->
            <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" />
            <link rel="stylesheet" href="resources/bootstrap/css/bootstrap-responsive.min.css" />
        <!-- breadcrumbs-->
            <link rel="stylesheet" href="resources/bootstrap/geboadmin/lib/jBreadcrumbs/css/BreadCrumb.css" />
        <!-- tooltips-->
            <link rel="stylesheet" href="resources/bootstrap/geboadmin/lib/qtip2/jquery.qtip.min.css" />
        <!-- colorbox -->
            <link rel="stylesheet" href="resources/bootstrap/geboadmin/lib/colorbox/colorbox.css" />    
        <!-- code prettify -->
            <link rel="stylesheet" href="resources/bootstrap/geboadmin/lib/google-code-prettify/prettify.css" />    
        <!-- notifications -->
            <link rel="stylesheet" href="resources/bootstrap/geboadmin/lib/sticky/sticky.css" />    
        <!-- splashy icons -->
            <link rel="stylesheet" href="resources/bootstrap/geboadmin/img/splashy/splashy.css" />
        <!-- flags -->
            <link rel="stylesheet" href="resources/bootstrap/geboadmin/img/flags/flags.css" />    
        <!-- calendar -->
            <link rel="stylesheet" href="resources/bootstrap/geboadmin/lib/fullcalendar/fullcalendar_gebo.css" />
            
        <!-- gebo color theme-->
            <link rel="stylesheet" href="resources/bootstrap/geboadmin/css/blue.css" id="link_theme" />
        <!-- main styles -->
            <link rel="stylesheet" href="resources/bootstrap/geboadmin/css/style.css" />
            
            <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans" />
    
        <!-- Favicon -->
            <link rel="shortcut icon" href="resources/bootstrap/geboadmin/favicon.ico" />
        
        <!--[if lte IE 8]>
            <link rel="stylesheet" href="resources/bootstrap/geboadmin/css/ie.css" />
            <script src="resources/bootstrap/geboadmin/js/ie/html5.js"></script>
            <script src="resources/bootstrap/geboadmin/js/ie/respond.min.js"></script>
            <script src="resources/bootstrap/geboadmin/lib/flot/excanvas.min.js"></script>
        <![endif]-->
        
        <script>
            //* hide all elements & show preloader
            document.documentElement.className += 'js';
        </script>
    </head>
    <body>
        <div id="loading_layer" style="display:none"><img src="resources/bootstrap/geboadmin/img/ajax_loader.gif" alt="" /></div>
        <!-- 设置按钮部分开始 ================================================================-->
        <div class="style_switcher">
            <div class="sepH_c">
                <p>颜色:</p>
                <div class="clearfix">
                    <a href="javascript:void(0)" class="style_item jQclr blue_theme style_active" title="blue">blue</a>
                    <a href="javascript:void(0)" class="style_item jQclr dark_theme" title="dark">dark</a>
                    <a href="javascript:void(0)" class="style_item jQclr green_theme" title="green">green</a>
                    <a href="javascript:void(0)" class="style_item jQclr brown_theme" title="brown">brown</a>
                    <a href="javascript:void(0)" class="style_item jQclr eastern_blue_theme" title="eastern_blue">eastern blue</a>
                    <a href="javascript:void(0)" class="style_item jQclr tamarillo_theme" title="tamarillo">tamarillo</a>
                </div>
            </div>
            <div class="sepH_c">
                <p>背景:</p>
                <div class="clearfix">
                    <span class="style_item jQptrn style_active ptrn_def" title=""></span>
                    <span class="ssw_ptrn_a style_item jQptrn" title="ptrn_a"></span>
                    <span class="ssw_ptrn_b style_item jQptrn" title="ptrn_b"></span>
                    <span class="ssw_ptrn_c style_item jQptrn" title="ptrn_c"></span>
                    <span class="ssw_ptrn_d style_item jQptrn" title="ptrn_d"></span>
                    <span class="ssw_ptrn_e style_item jQptrn" title="ptrn_e"></span>
                </div>
            </div>
            <div class="sepH_c">
                <p>布局:</p>
                <div class="clearfix">
                    <label class="radio inline"><input type="radio" name="ssw_layout" id="ssw_layout_fluid" value="" checked /> Fluid</label>
                    <label class="radio inline"><input type="radio" name="ssw_layout" id="ssw_layout_fixed" value="gebo-fixed" /> Fixed</label>
                </div>
            </div>
            <div class="sepH_c">
                <p>菜单位置：</p>
                <div class="clearfix">
                    <label class="radio inline"><input type="radio" name="ssw_sidebar" id="ssw_sidebar_left" value="" checked /> 左侧</label>
                    <label class="radio inline"><input type="radio" name="ssw_sidebar" id="ssw_sidebar_right" value="sidebar_right" /> 右侧</label>
                </div>
            </div>
            <div class="sepH_c">
                <p>顶部菜单:</p>
                <div class="clearfix">
                    <label class="radio inline"><input type="radio" name="ssw_menu" id="ssw_menu_click" value="" checked /> 点击显示</label>
                    <label class="radio inline"><input type="radio" name="ssw_menu" id="ssw_menu_hover" value="menu_hover" /> 位于上方显示</label>
                </div>
            </div>
            
            <div class="gh_button-group">
                <a href="#" id="showCss" class="btn btn-primary btn-mini">显示CSS</a>
                <a href="#" id="resetDefault" class="btn btn-mini">重置</a>
            </div>
            <div class="hide">
                <ul id="ssw_styles">
                    <li class="small ssw_mbColor sepH_a" style="display:none">body {<span class="ssw_mColor sepH_a" style="display:none"> color: #<span></span>;</span> <span class="ssw_bColor" style="display:none">background-color: #<span></span> </span>}</li>
                    <li class="small ssw_lColor sepH_a" style="display:none">a { color: #<span></span> }</li>
                </ul>
            </div>
        </div>
        <!-- 设置按钮部分结束 ================================================================-->
        
        <div id="maincontainer" class="clearfix">
            <!-- header -->
            <header>
                <div class="navbar navbar-fixed-top">
                    <div class="navbar-inner">
                        <div class="container-fluid">
                            <a class="brand" href="index.jsp"><i class="icon-home icon-white"></i> 运营平台</a>
                            
                            <!-- 顶部右边部分开始 ================================================================-->
                            <ul class="nav user_menu pull-right">
                                <li class="hidden-phone hidden-tablet">
                                    <div class="nb_boxes clearfix">
                                        <a data-toggle="modal" data-backdrop="static" href="#myMail" class="label ttip_b" title="New messages">25 <i class="splashy-mail_light"></i></a>
                                        <a data-toggle="modal" data-backdrop="static" href="#myTasks" class="label ttip_b" title="New tasks">10 <i class="splashy-calendar_week"></i></a>
                                    </div>
                                </li>
                                <li class="divider-vertical hidden-phone hidden-tablet"></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle nav_condensed" data-toggle="dropdown"><i class="flag-cn"></i> <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0)"><i class="flag-us"></i> English</a></li>
                                        <li><a href="javascript:void(0)"><i class="flag-cn"></i> 简体中文</a></li>
                                        <li><a href="javascript:void(0)"><i class="flag-tw"></i> 繁体中文</a></li>
                                    </ul>
                                </li>
                                <li class="divider-vertical hidden-phone hidden-tablet"></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/bootstrap/geboadmin/img/user_avatar.png" alt="" class="user_avatar" /> Johny Smith <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">My Profile</a></li>
                                        <li><a href="javascrip:void(0)">Another action</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Log Out</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <!-- 顶部右边部分结束 ================================================================-->
                            <ul class="nav" id="mobile-nav">
                            	<!-- 顶部下拉部分开始 ================================================================-->
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="icon-list-alt icon-white"></i> 示例1<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">示例1</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="icon-th icon-white"></i>示例2 <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">示例2_1</a></li>
                                        <li class="dropdown">
                                            <a href="#">示例2_2 <b class="caret-right"></b></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Sub menu 1.1</a></li>
                                                <li>
                                                    <a href="#">Sub menu 1.2 <b class="caret-right"></b></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">Sub menu 1.4.1</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="icon-wrench icon-white"></i>示例3 <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Charts</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="icon-file icon-white"></i> 示例4 <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Blog Page</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#"><i class="icon-book icon-white"></i> 帮助中心</a>
                                </li>
                                <!-- 顶部下拉部分结束 ================================================================-->
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="modal hide fade" id="myMail">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">×</button>
                        <h3>New messages</h3>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-info">In this table jquery plugin turns a table row into a clickable link.</div>
                        <table class="table table-condensed table-striped" data-provides="rowlink">
                            <thead>
                                <tr>
                                    <th>Sender</th>
                                    <th>Subject</th>
                                    <th>Date</th>
                                    <th>Size</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Declan Pamphlett</td>
                                    <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                    <td>23/05/2012</td>
                                    <td>25KB</td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <a href="javascript:void(0)" class="btn">Go to mailbox</a>
                    </div>
                </div>
                
                <div class="modal hide fade" id="myTasks">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">×</button>
                        <h3>New Tasks</h3>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-info">In this table jquery plugin turns a table row into a clickable link.</div>
                        <table class="table table-condensed table-striped" data-provides="rowlink">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Summary</th>
                                    <th>Updated</th>
                                    <th>Priority</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>P-23</td>
                                    <td><a href="javascript:void(0)">Admin should not break if URL&hellip;</a></td>
                                    <td>23/05/2012</td>
                                    <td class="tac"><span class="label label-important">High</span></td>
                                    <td>Open</td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <a href="javascript:void(0)" class="btn">Go to task manager</a>
                    </div>
                </div>
            </header>
            
            <!-- main content -->
            <div id="contentwrapper">
                <div class="main_content">
                 <!--  右侧内容区域开始 ================================================================-->
                 	<!--  内容顶部导航区域开始 ================================================================-->
                	<nav>
                        <div id="jCrumbs" class="breadCrumb module">
                            <ul>
                                <li>
                                    <a href="#"><i class="icon-home"></i></a>
                                </li>
                                <li>
                                    <a href="#">系统管理</a>
                                </li>
                                <li>
                                    <a href="#">部门管理</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <!--  内容顶部导航区域开结束================================================================-->
                    <div class="row-fluid">
                        <div class="span12">
                        	<iframe id="iframepage" name="iframepage"  width="100%" height="100%" scrolling="no" frameborder="0" src="user/list.html"></iframe>
                        </div>
                    </div>
                    <!--  右侧内容区域结束 ================================================================--> 
                </div>
            </div>
            
            <!-- sidebar -->
            <a href="javascript:void(0)" class="sidebar_switch on_switch ttip_r" title="Hide Sidebar">Sidebar switch</a>
            <div class="sidebar">
                
                <div class="antiScroll">
                    <div class="antiscroll-inner">
                        <div class="antiscroll-content">
                    
                            <div class="sidebar_inner">
                                <form action="#" class="input-append" method="post" >
                                    <input autocomplete="off" name="query" class="search_query input-medium" size="16" type="text" placeholder="Search..." /><button type="submit" class="btn"><i class="icon-search"></i></button>
                                </form>
                                <div id="side_accordion" class="accordion">
                                    
                                   <!--  左侧菜单区域开始================================================================-->
                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a href="#collapse1" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                                <i class="icon-cog"></i>系统管理
                                            </a>
                                        </div>
                                        <div class="accordion-body collapse" id="collapse1">
                                            <div class="accordion-inner">
                                                <ul class="nav nav-list">
                                                	<li><a href="javascript:void(0)">权限管理</a></li>
                                                	<li><a href="javascript:void(0)">菜单管理</a></li>
                                                    <li><a href="javascript:void(0)">部门管理</a></li>
                                                    <li><a href="javascript:void(0)">角色管理</a></li>
                                                    <li><a href="javascript:void(0)">用户管理</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a href="#collapse2" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                                <i class="icon-folder-close"></i>菜单2
                                            </a>
                                        </div>
                                        <div class="accordion-body collapse" id="collapse2">
                                            <div class="accordion-inner">
                                                <ul class="nav nav-list">
                                                    <li><a href="javascript:void(0)">菜单2_1</a></li>
                                                    <li><a href="javascript:void(0)">菜单2_2</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a href="#collapse7" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                               <i class="icon-th"></i> 计算器
                                            </a>
                                        </div>
                                        <div class="accordion-body collapse in" id="collapse7">
                                            <div class="accordion-inner">
                                                <form name="Calc" id="calc">
                                                    <div class="formSep control-group input-append">
                                                        <input type="text" style="width:130px" name="Input" /><button type="button" class="btn" name="clear" value="c" onclick="Calc.Input.value = ''"><i class="icon-remove"></i></button>
                                                    </div>
                                                    <div class="control-group">
                                                        <input type="button" class="btn btn-large" name="seven" value="7" onclick="Calc.Input.value += '7'" />
                                                        <input type="button" class="btn btn-large" name="eight" value="8" onclick="Calc.Input.value += '8'" />
                                                        <input type="button" class="btn btn-large" name="nine" value="9" onclick="Calc.Input.value += '9'" />
                                                        <input type="button" class="btn btn-large" name="div" value="/" onclick="Calc.Input.value += ' / '">
                                                    </div>
                                                    <div class="control-group">
                                                        <input type="button" class="btn btn-large" name="four" value="4" onclick="Calc.Input.value += '4'" />
                                                        <input type="button" class="btn btn-large" name="five" value="5" onclick="Calc.Input.value += '5'" />
                                                        <input type="button" class="btn btn-large" name="six" value="6" onclick="Calc.Input.value += '6'" />
                                                        <input type="button" class="btn btn-large" name="times" value="x" onclick="Calc.Input.value += ' * '" />
                                                    </div>
                                                    <div class="control-group">
                                                        <input type="button" class="btn btn-large" name="one" value="1" onclick="Calc.Input.value += '1'" />
                                                        <input type="button" class="btn btn-large" name="two" value="2" onclick="Calc.Input.value += '2'" />
                                                        <input type="button" class="btn btn-large" name="three" value="3" onclick="Calc.Input.value += '3'" />
                                                        <input type="button" class="btn btn-large" name="minus" value="-" onclick="Calc.Input.value += ' - '" />
                                                    </div>
                                                    <div class="formSep control-group">
                                                        <input type="button" class="btn btn-large" name="dot" value="." onclick="Calc.Input.value += '.'" />
                                                        <input type="button" class="btn btn-large" name="zero" value="0" onclick="Calc.Input.value += '0'" />
                                                        <input type="button" class="btn btn-large" name="DoIt" value="=" onclick="Calc.Input.value = Math.round( eval(Calc.Input.value) * 1000)/1000" />
                                                        <input type="button" class="btn btn-large" name="plus" value="+" onclick="Calc.Input.value += ' + '" />
                                                    </div>
                                                </form>
                                            </div>
                                         </div>
                                    </div>
                                    
                                    <!--  左侧菜单区结束 ================================================================-->
                                </div>
                                
                                <div class="push"></div>
                            </div>
                               
                            <div class="sidebar_info">
                                <ul class="unstyled">
                                    <li>
                                        <span class="act act-warning">65</span>
                                        <strong>New comments</strong>
                                    </li>
                                    <li>
                                        <span class="act act-success">10</span>
                                        <strong>New articles</strong>
                                    </li>
                                    <li>
                                        <span class="act act-danger">85</span>
                                        <strong>New registrations</strong>
                                    </li>
                                </ul>
                            </div> 
                        
                        </div>
                    </div>
                </div>
            
            </div>
            
            <script src="resources/bootstrap/geboadmin/js/jquery.min.js"></script>
            <script src="resources/bootstrap/geboadmin/js/jquery-migrate.min.js"></script>
            <!-- smart resize event -->
            <script src="resources/bootstrap/geboadmin/js/jquery.debouncedresize.min.js"></script>
            <!-- hidden elements width/height -->
            <script src="resources/bootstrap/geboadmin/js/jquery.actual.min.js"></script>
            <!-- js cookie plugin -->
            <script src="resources/bootstrap/geboadmin/js/jquery_cookie.min.js"></script>
            <!-- main bootstrap js -->
            <script src="resources/bootstrap/js/bootstrap.min.js"></script>
            <!-- bootstrap plugins -->
            <script src="resources/bootstrap/geboadmin/js/bootstrap.plugins.min.js"></script>
            <!-- tooltips -->
            <script src="resources/bootstrap/geboadmin/lib/qtip2/jquery.qtip.min.js"></script>
            <!-- jBreadcrumbs -->
            <script src="resources/bootstrap/geboadmin/lib/jBreadcrumbs/js/jquery.jBreadCrumb.1.1.min.js"></script>
            <!-- lightbox -->
            <script src="resources/bootstrap/geboadmin/lib/colorbox/jquery.colorbox.min.js"></script>
            <!-- fix for ios orientation change -->
            <script src="resources/bootstrap/geboadmin/js/ios-orientationchange-fix.js"></script>
            <!-- scrollbar -->
            <script src="resources/bootstrap/geboadmin/lib/antiscroll/antiscroll.js"></script>
            <script src="resources/bootstrap/geboadmin/lib/antiscroll/jquery-mousewheel.js"></script>
            <!-- to top -->
            <script src="resources/bootstrap/geboadmin/lib/UItoTop/jquery.ui.totop.min.js"></script>
            <!-- mobile nav -->
            <script src="resources/bootstrap/geboadmin/js/selectNav.js"></script>
            <!-- common functions -->
            <script src="resources/bootstrap/geboadmin/js/gebo_common.js"></script>
            
            <script src="resources/bootstrap/geboadmin/lib/jquery-ui/jquery-ui-1.10.0.custom.min.js"></script>
            <!-- touch events for jquery ui-->
            <script src="resources/bootstrap/geboadmin/js/forms/jquery.ui.touch-punch.min.js"></script>
            <!-- multi-column layout -->
            <script src="resources/bootstrap/geboadmin/js/jquery.imagesloaded.min.js"></script>
            <script src="resources/bootstrap/geboadmin/js/jquery.wookmark.js"></script>
            <!-- responsive table -->
            <script src="resources/bootstrap/geboadmin/js/jquery.mediaTable.min.js"></script>
            <!-- small charts -->
            <script src="resources/bootstrap/geboadmin/js/jquery.peity.min.js"></script>
            <!-- charts -->
            <script src="resources/bootstrap/geboadmin/lib/flot/jquery.flot.min.js"></script>
            <script src="resources/bootstrap/geboadmin/lib/flot/jquery.flot.resize.min.js"></script>
            <script src="resources/bootstrap/geboadmin/lib/flot/jquery.flot.pie.min.js"></script>
            <!-- calendar -->
            <script src="resources/bootstrap/geboadmin/lib/fullcalendar/fullcalendar.min.js"></script>
            <!-- sortable/filterable list -->
            <script src="resources/bootstrap/geboadmin/lib/list_js/list.min.js"></script>
            <script src="resources/bootstrap/geboadmin/lib/list_js/plugins/paging/list.paging.js"></script>
            <!-- dashboard functions -->
            <script src="resources/bootstrap/geboadmin/js/gebo_dashboard.js"></script> 
    		<!-- validation -->
            <script src="resources/bootstrap/geboadmin/lib/validation/jquery.validate.min.js"></script>
            <!-- validation functions -->
            <script src="resources/bootstrap/geboadmin/js/gebo_validation.js"></script>
            <script>
                $(document).ready(function() {
                    //* show all elements & remove preloaderjquery.qtip.min
                    setTimeout('$("html").removeClass("js")',1000);
                    
                    $("#iframepage").load(function(){
                    	var mainHeight = window.screen.availHeight-40;
						//var iframeHeight = $(this).contents().find("body").height();
						var iframeHeight = $(this).contents().height();
						$(this).height(mainHeight>iframeHeight?mainHeight:iframeHeight);
					}); 
                });
            </script>
        
        </div>
        
    </body>
</html>