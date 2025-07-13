====== INDUSTRIAL MANAGEMENT SYSTEM ERP ===

   DATABASE MYSQL Schema AND TABLE 
        ====SQL SCHRMA Serial part by part ===
     Part 1 – Production, BOM, Inventory, UOM, Warehouse
     Part 2 – Orders, Sales, Purchases, Invoices
     Part 3: HR, Employees, Positions, Departments, Managers
     Part 4: Finance – Payments, Receipts, Adjustments, Transactions
     Part 5: Production – Production Details, Tables, Units, Sections, Statuses
      

    ====TABLE NAME==== 

      Part 1 – Production, BOM, Inventory, UOM, Warehouse
           bom_finished_goods  
           inventory_movements  
           bom_row_materials  
           items  
           uoms  
           warehouses  
           boms  

      Part 2 – Orders, Sales, Purchases, Invoices
           order_details  
           sales_invoices_items  
           sales_invoices  
           purchases  
           purchase_invoice_items  
           purchase_invoices  
           invoices  
           purchase_details  
           invoice_details  

      Part 3 – HR, Employees, Positions, Departments, Managers
           employees  
           positions  
           departments  
           managers  

      Part 4 – Finance – Payments, Receipts, Adjustments, Transactions
           suppliers_payments  
           money_receipts  
           adjustment_types  
           stock_adjustments  
           stock_adjustment_types  
           transaction_types  

      Part 5 – Production – Production Details, Tables, Units, Sections, Statuses
           production_details  
           tables  
           product_units  
           product_sections  
           sections  
           statuses  

      Others
           manufacturers  
           stocks  
           suppliers  
           product_types  
           products  
           product_categories  
           customers  
           vendors  
           users  
           orders  

   
      ## Main Menu and Submenu Structure for Industrial Management System ERP

        1.. Production Management

          => Bill of Materials (BOM)
          => Production Planning
          => Production Orders
          => Production Status
          => Sections
          => Units
          => Tables

        2.. Inventory Management

          => Item Master
          => Inventory Levels
          => Warehouse Management
          => Stock Transfers
          => Stock Adjustments
          => UOM (Units of Measure)

        3.. Sales & Order Management

          => Orders
          => Sales
          => Customers
          => Invoices
          => Delivery Notes

      4.. Purchase Management

          => Purchase Orders
          => Suppliers
          => Purchase Receipts
          => Purchase Returns

      5.. HR Management

          => Employees
          => Positions
          => Departments
          => Attendance
          => Managers
          => Payroll

     6.. Finance Management

          => Payments
          => Money Receipts
          => Adjustments
          => Transactions
          => Account Ledger

      7.. Reports

          => Production Reports
          => Inventory Reports
          => Sales Reports
          => Purchase Reports
          => HR Reports
          => Finance Reports

      8.. Settings & Master Data

          => User Management
          => Role & Permission Management
          => Company Settings
          => Tax & Currency Settings
          => Audit Trail
     


         ===== Production Management=====
         Document	                            Description
   Bill of Materials (BOM)✅✅          Defines components required to make a product.
   Production Planning✅                 Document	Scheduling and allocation of production resources.
   Production Status Report	             Tracks progress of active production orders.
   Production Report                     from Production Orders
        ======== Inventory Management=======
   Stock Transfer Note                   Transfer of items between warehouses.
   Stock Adjustment Record✅	            Adjustment of inventory due to damage, loss, etc.
   Inventory Ledger Report	             item-level stock movement (optional document/report).
   Inventory Report                      from stock movement
        ======Sales & Order Management======
   Sales Order✅✅	                     Customer request for products.
   Sales Invoice✅✅                     Final bill issued to the customer.
   Delivery Note	                        Document for shipping products to the customer.
   Customer Record	                      Customer details and transaction history (Master Data).
   Sales Report                           from Invoices
        ====== Purchase Management======
   Purchase Order (PO)✅✅                Request to supplier to buy items.
   Purchase Receipt	                       Record of goods received from supplier.
   Purchase Return Note	                   Record of returned items to supplier.
        ======HR Management=======
   Employee Profile✅                      Master data for employees.
   Attendance Sheet	                       Daily/monthly presence records.
   Payroll Document/Payslip	               Salary statement for an employee.
        ====== Finance Management=====
   Payment Voucher	                       Payment made to vendor/supplier.
   Money Receipt (bill)✅✅               Money received from customer.
   Transaction Record	                     Financial transaction (general ledger).
   Account Ledger	                         Summary of all transactions of an account.
   



# Industrial Management System ERP - Menu Structure

##  Part 1: Production, BOM, Inventory, UOM, Warehouse
### Production & Inventory
  - Bill of Materials (BOM)  
  - Create BOM
  - BOM List
  - BOM Versioning
- Inventory  
  - Stock In / Out
  - Inventory List
  - Inventory Adjustment
-   Units of Measure (UOM)  
  - UOM Types
  - UOM Conversions
-   Warehouse  
  - Manage Warehouses
  - Warehouse Locations
  - Warehouse Transfers
-   Production Planning  
  - Production Schedules
  - Material Requirements
  - Capacity Planning

## 🛒 Part 2: Orders, Sales, Purchases, Invoices
### Sales & Procurement
-   Sales  
  - Create Sales Order
  - Sales Order List
  - Delivery Notes
-   Purchases  
  - Create Purchase Order
  - Purchase Order List
  - Supplier Management
-   Invoices  
  - Sales Invoices
  - Purchase Invoices
  - Credit Notes
-   Customer Management  
  - Customer List
  - Customer Types
  - Contact Details

## 👥 Part 3: HR, Employees, Positions, Departments, Managers
### Human Resources
-   Employee Management  
  - Add Employee
  - Employee Directory
  - Employee Profiles
-   Departments  
  - Add Department
  - Department List
-   Positions  
  - Add Job Position
  - Position List
-   Managers  
  - Assign Managers
  - Manager Hierarchy
-   Attendance & Shifts  
  - Shift Management
  - Attendance Records

## 💰 Part 4: Finance – Payments, Receipts, Adjustments, Transactions
### Finance & Accounting
-   Payments  
  - Make Payment
  - Payment History
-   Receipts  
  - Record Receipt
  - Receipt List
-   Adjustments  
  - Journal Adjustments
  - Adjustment History
-   Transactions  
  - Ledger View
  - Chart of Accounts
  - Trial Balance

## 🏭 Part 5: Production – Production Details, Tables, Units, Sections, Statuses
### Manufacturing Execution
-   Production Details  
  - Production Batches
  - Production Logs
-   Production Tables  
  - Task Boards / Tables
  - Table Assignments
-   Units & Sections  
  - Production Units
  - Sections/Lines
-   Statuses  
  - Production Statuses
  - Work-in-Progress Tracker

## 🛠️ Other (Optional Admin Tools)
### Settings & System
- User Roles & Permissions
- Audit Logs
- Notifications
- System Preferences
- Data Backup & Restore
