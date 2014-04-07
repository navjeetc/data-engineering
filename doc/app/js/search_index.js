var search_data = {"index":{"searchIndex":["applicationcontroller","applicationhelper","company","custom","order","lineitem","order","orderprocessor","orderscontroller","ordershelper","user","add_line_items()","create()","extract_line_items()","extract_order_line()","gross_revenue()","index()","new()","parse_columns()","parse_order()","read_data()","upload()","readme"],"longSearchIndex":["applicationcontroller","applicationhelper","company","custom","custom::order","lineitem","order","orderprocessor","orderscontroller","ordershelper","user","order#add_line_items()","orderscontroller#create()","order#extract_line_items()","orderprocessor#extract_order_line()","order#gross_revenue()","orderscontroller#index()","orderprocessor::new()","orderprocessor#parse_columns()","orderprocessor#parse_order()","orderprocessor#read_data()","orderscontroller#upload()",""],"info":[["ApplicationController","","ApplicationController.html","","<p>Base controller\n"],["ApplicationHelper","","ApplicationHelper.html","","<p>Application wide helpers should be added here\n"],["Company","","Company.html","","<p>This class represents the company that can have many orders\n"],["Custom","","Custom.html","","<p>namespaced Order\n"],["Custom::Order","","Custom/Order.html","","<p>Represents a line item in the uploaded order data file\n"],["LineItem","","LineItem.html","","<p>This class represents the line items in the order uploaded Each line item\ncan have the following attributes: …\n"],["Order","","Order.html","","<p>This class represents the orders uploaded for a company An order can have\nmany line items\n"],["OrderProcessor","","OrderProcessor.html","","<p>This class reads a tab delimited data file, parses the order data and\nreturns an array of orders\n<p>Author … &mdash; "],["OrdersController","","OrdersController.html","","<p>This class is responsible for getting list of companies and their  order\ndetails. It also creates an …\n"],["OrdersHelper","","OrdersHelper.html","","<p>View helper class for Orders\n"],["User","","User.html","","<p>This class represents the user of the application\n"],["add_line_items","Order","Order.html#method-i-add_line_items","(line_items)","<p>adds line items to order\n"],["create","OrdersController","OrdersController.html#method-i-create","()","<p>Creates the company based on name passed in parameters, if  the company\ndoes not exist in the database …\n"],["extract_line_items","Order","Order.html#method-i-extract_line_items","(orders_data)","<p>Extracts the line items from the <em>orders_data</em> file passed in and\nsaves them\n"],["extract_order_line","OrderProcessor","OrderProcessor.html#method-i-extract_order_line","(row, index)","<p>Extracts line items from order row\n"],["gross_revenue","Order","Order.html#method-i-gross_revenue","()","<p>Returns the gross revenue for the order\n"],["index","OrdersController","OrdersController.html#method-i-index","()","<p>Sets the list companies in an instance variable\n"],["new","OrderProcessor","OrderProcessor.html#method-c-new","(file_path=nil)","<p>initialized data file path\n"],["parse_columns","OrderProcessor","OrderProcessor.html#method-i-parse_columns","(row_data)","<p>maps column names to their position (starting postion is 0)\n"],["parse_order","OrderProcessor","OrderProcessor.html#method-i-parse_order","(data)","<p>parses order data and returns the order\n"],["read_data","OrderProcessor","OrderProcessor.html#method-i-read_data","()","<p>reads each line of data from tab delimited data file\n"],["upload","OrdersController","OrdersController.html#method-i-upload","()","<p>Creates an instance of company if not already set\n"],["README","","README_rdoc.html","","<p>README\n<p>This application is recommended to be used with\n<p>Ruby version 2.1.0 (or greater)\n"]]}}