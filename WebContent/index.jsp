<%@ page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
<title>人力资源管理</title>
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <script type="text/javascript" src="./js/jquery.min.js"></script>
 <link href="assets/css/bootstrap.css" rel="stylesheet" />
 <link href="assets/css/font-awesome.css" rel="stylesheet" />
 <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
 <link href="assets/css/custom-styles.css" rel="stylesheet" />
 <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.metisMenu.js"></script>
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>	
	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>
    <script src="assets/js/custom-scripts.js"></script>
</head>
<script type="text/javascript">
	function query(){
		$.getJSON("query.do",function(data){
			$body = $("#two tbody");
			$.each(data,function(i,s){
				console.log(s);
				$tr = $("<tr></tr>");	
				$td1 = $("<td>"+(i+1)+"</td>").appendTo($tr);
				$td1 = $("<td>"+s.name+"</td>").appendTo($tr);
				$td1 = $("<td>"+s.sex+"</td>").appendTo($tr);
				$td1 = $("<td>"+s.classId+"</td>").appendTo($tr);
				$td1 = $("<td>"+s.date+"</td>").appendTo($tr);
				$td1 = $("<td>"+s.score+"</td>").appendTo($tr);
				$td1 = $("<td>"+s.phone+"</td>").appendTo($tr);
				$body.append($tr);
			})
		})
	}
	jQuery(function(){
		query();
	})
	
</script>
<body>
 <div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
       <div class="navbar-header">
           <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
           </button>
           <a class="navbar-brand" href="index.html"><i class="fa fa-comments"></i> <strong>人力资源管理 </strong></a>
       </div>
       <ul class="nav navbar-top-links navbar-right">
          <li class="dropdown">
             <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
              </a>
          </li>
          <li class="dropdown">
             <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
             </a>
        <ul class="dropdown-menu dropdown-tasks">
           <li>
              <a href="#">
                  <div>
                     <p>
                       <strong>Task 1</strong>
                            <span class="pull-right text-muted">60% Complete</span>
                      </p>
                     <div class="progress progress-striped active">
                      	<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                             <span class="sr-only">60% Complete (success)</span>
                        </div>
                      </div>
         		  </div>
                </a>
             </li>
             <li class="divider"></li>
             <li>
               <a href="#">
             <div>
                  <p>
                      <strong>Task 2</strong>
                         <span class="pull-right text-muted">28% Complete</span>
                   </p>
              <div class="progress progress-striped active">
                   <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                        <span class="sr-only">28% Complete</span>
                   </div>
              </div>
          </div>
       </a>
      </li>
         <li class="divider"></li>
            <li>
               <a href="#">
        <div>
             <p>
               <strong>Task 3</strong>
                    <span class="pull-right text-muted">60% Complete</span>
              </p>
          <div class="progress progress-striped active">
           <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                    <span class="sr-only">60% Complete (warning)</span>
           </div>
        </div>
     </div>
    </a>
   </li>
        <li class="divider"></li>
            <li>
                <a class="text-center" href="#">
                    <strong>See All Tasks</strong>
                         <i class="fa fa-angle-right"></i>
                   </a>
             </li>
  			</ul>
       </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                   
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!--/. 左侧导航  -->
     <nav class="navbar-default navbar-side" role="navigation">
		<div id="sideNav" href=""><i class="fa fa-caret-right"></i></div>
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <a class="active-menu" href="index.jsp"><i class="fa fa-dashboard"></i> 公司人力资源管理</a>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa fa-fw fa-file"></i> 招聘管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                             <li>
                                <a href="#home">人员招聘信息</a>
                            </li>
                            <li>
                                <a href="#">合同签订</a>
                            </li>
                            <li>
                                <a href="#">合同续约</a>
                            </li>
                        </ul>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i> 培训管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">培新计划案</a>
                            </li>
                            <li>
                                <a href="#">培新人员</a>
                            </li>
                            <li>
                                <a href="#">培新成绩</a>
                            </li>
                        </ul>
                    </li>
                    
					  <li>
                        <a href="#"><i class="fa fa-qrcode"></i> 考勤管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#two">考勤记录</a>
                            </li>
                            <li>
                                <a href="#">部门审核</a>
                            </li>
                            <li>
                                <a href="#">员工绩效考核</a>
                            </li>
                        </ul>
                    </li>


                    <li>
                        <a href="#"><i class="fa fa-sitemap"></i> 薪酬福利管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">加班管理</a>
                            </li>
                            <li>
                                <a href="#">福利管理</a>
                            </li>
                            <li>
                                <a href="#">薪资生成</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
	
	<!--/. 默认首页  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                 <div class="col-md-12">
                     <h1 class="page-header">
                       公司人力资源管理
                     </h1>
				     <ol class="breadcrumb">
                        <li><a href="#">首页</a></li>
                        <li><a href="#">公司</a></li>
                        <li class="active">数据</li>
                     </ol>
                </div>
            </div>	
		<div class="row">
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>管理人员</h4>
						<div class="easypiechart" id="easypiechart-blue" data-percent="5" ><span class="percent">5%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>销售人员</h4>
						<div class="easypiechart" id="easypiechart-orange" data-percent="35" ><span class="percent">35%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>研发人员</h4>
						<div class="easypiechart" id="easypiechart-teal" data-percent="10" ><span class="percent">10%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>物流人员</h4>
						<div class="easypiechart" id="easypiechart-red" data-percent="46" ><span class="percent">46%</span>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
				
                <div class="row">
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                               人力部门任务面板
                            </div>
                            <div class="panel-body">
                                <div class="list-group">

                                    <a href="#" class="list-group-item">
                                        <span class="badge">7 minutes ago</span>
                                        <i class="fa fa-fw fa-comment"></i> Commented on a post
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">16 minutes ago</span>
                                        <i class="fa fa-fw fa-truck"></i> Order 392 shipped
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">36 minutes ago</span>
                                        <i class="fa fa-fw fa-globe"></i> Invoice 653 has paid
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">1 hour ago</span>
                                        <i class="fa fa-fw fa-user"></i> A new user has been added
                                    </a>
                                </div>
                                <div class="text-right">
                                    <a href="#">More Tasks <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-8 col-sm-12 col-xs-12">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                人事部门经理信息
                            </div> 
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>员工编号</th>
                                                <th>姓名</th>
                                                <th>所属部门</th>
                                                <th>手机号</th>
                                                <th>Email ID.</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>John</td>
                                                <td>人力1部</td>
                                                <td>15482</td>
                                                <td>John@site.com</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Kimsila</td>
                                                <td>人力2部</td>
                                                <td>1502336</td>
                                                <td>Kimsila@site.com</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Rossye</td>
                                                <td>人力3部</td>
                                                <td>124565</td>
                                                <td>Rossye@site.com</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/. 信息添加  -->
     <div id="page-wrapper">
        <div id="page-inner">
             <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="home">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-header">员工信息添加 <small>将新聘员工信息录入公司系统</small></h1>
                        </div>
                    </div> 
                    <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                              	  员工基本信息录入
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                   <div class="col-lg-8">
                                       <form role="form" action="insert.do" method="post">
                                           <div class="form-group">
                                               <label>员工姓名</label>
                                               <input class="form-control" name="name">
                                            </div>
                                            <div class="form-group">
                                                <label>性别</label>
                                                <div class="radio">
                                                   <label name="sex">
                                                     <input type="radio" name="optionsRadios" id="optionsRadios1" value="男" checked="">男
                                                    <br>
                                                  	 <input type="radio" name="optionsRadios" id="optionsRadios2" value="女">女
                                                  </label>
                                               </div>
                                        </div>
                                        <div class="form-group">
                                            <label>所属部门编号</label>
                                            <select class="form-control" name="classId">
                                                <option>研发01</option>
                                                <option>财务01</option>
                                                <option>设计01</option>
                                                <option>秘书01</option>
                                                <option>销售01</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>员工薪资</label>
                                            <input class="form-control" name="money">
                                        </div>
                                        <div class="form-group">
                                            <label>联系方式</label>
                                            <input class="form-control" name="phone">
                                        </div>
                                        <button type="submit" class="btn btn-default">提交</button>
                                        <button type="reset" class="btn btn-default">重置</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                    </div>  
                </div>
            </div>
    </div>

<!--/. 员工考勤 -->           
         <div role="tabpanel" class="tab-pane active" id="two">
             <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                     考勤页 <small>员工的考勤信息</small>
                    </h1>
                </div>
            </div> 
            <div class="row">
                <div class="col-lg-12">
                   <div class="panel panel-default">
                       <div class="panel-heading">
                           		  考勤表
                       </div> 
                       <div class="panel-body">
                           <div class="row">
                    		   <div class="col-lg-12">
                    		 	  <div class="col-sm-6">
                        			<label>
                            		 <select name="dataTables-example_length" aria-controls="dataTables-example" class="form-control input-sm">
                                		<option value="10">10</option>
                                		<option value="25">25</option>
                                		<option value="50">50</option>
                                		<option value="100">100</option>
                               		 </select>
                        		   </label>每页显示记录
                    		  </div> 
                    		<div class="col-sm-6">
                        		<label>
                            		<input placeholder="请输入查询信息" name="input">
                            		<button id="btn-save" class="btn btn-default">查询</button>
                        		</label>
                    		</div> 
                       </div> 
                   </div>
                          <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                        	<th>序号</th>
                                            <th>姓名</th>
                                            <th>部门编号</th>
                                            <th>性别</th>
                                            <th>日期</th>
                                            <th>考勤分</th>
                                            <th>联系方式</th>
                                        </tr>
                                    </thead>
                                    <tbody id="message">
                                    
                                    	
                                  
                                    	
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                   </div>
                  
               
                </div>
            </div>
        </div>
    </div>
</div>    
</body>
</html>