
table 60000 DataTable
{
    
    fields
    {
        field(1 ; CustomerName ; Text[250])
        {
         DataClassification = ToBeClassified;
         TableRelation = "Sales Order Entity Buffer";
        }
        field(2; Contact; Text[250])
        {
          DataClassification = ToBeClassified;
          TableRelation =  "Sales Order Entity Buffer";
        }
        field(3;PostingDate;Date)
        {
         DataClassification = ToBeClassified;
         TableRelation = "Sales Order Entity Buffer";
        }
        field(4;"Order Date"; Date)
        {
         DataClassification = ToBeClassified;
         TableRelation = "Sales Order Entity Buffer";
        }
        field(5;"Due Date";Date)
        {
         DataClassification = ToBeClassified;
         TableRelation = "Sales Order Entity Buffer";
        }
        field(6;"Document Number";Integer)
        {
         DataClassification = ToBeClassified;
         TableRelation = "Sales Order Entity Buffer";
        }
        field(7;"Item Type";Integer)
        {
          DataClassification = ToBeClassified;
          TableRelation = Item;
        }
        field(8;"Item No.";Integer)
        {
         DataClassification = ToBeClassified;
         TableRelation = Item;
        }
        field(9;"Item Desc";Text[250])
        {
         DataClassification = ToBeClassified;
         TableRelation = Item;
        }
        field(10;"Quantity"; Integer)
        {
         DataClassification = ToBeClassified;
         TableRelation = Item;
        }
        field(11;"Location Code";Text[250])
        {
          DataClassification = ToBeClassified;
          TableRelation = Item;
        }
        field(12;"Unit Of Measure";Text[250])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item;
        }
        field(13;"Unit Price EXC Tax";Integer)
        {
          DataClassification = ToBeClassified;
          TableRelation = Item;
        }
        field(14;"Amount Incl Tax";Integer)
        { 
           DataClassification = ToBeClassified;
           TableRelation = Item;
        }
        field(15;"Shipping Date";Date)
        {
           DataClassification = ToBeClassified;
           TableRelation = Item;
        }
        field(16;"Job No";Text[250])
        {
           DataClassification = ToBeClassified;
           TableRelation = Job;
        }
        field(17;"Job Desc";Text[250])
        {
            DataClassification = ToBeClassified;
            TableRelation = Job;
          
        }
        field(18;"Bill To Customer";Text[250])
        {
          DataClassification = ToBeClassified;
          TableRelation = Job;
        }
        field(19;"Bill To Contact Number" ; Text[250])
        {
          DataClassification = ToBeClassified;
          TableRelation = Job;
        }
        field(21;"State Or Zip";Text[250])
        {
         DataClassification = ToBeClassified;
         TableRelation = Job;
        }
        field(22;"Job Tasks no";Text[250])
        {
         DataClassification = ToBeClassified ;
         TableRelation = Job;
        }
        field(23;"Task Desc";Text[250])
        {
         DataClassification = ToBeClassified;
         TableRelation = Job;
        }
        field(24;"Job Task Type";Text[250])
        {
         DataClassification = ToBeClassified;
         TableRelation = Job;
        }
        field(25;"Budget Sales Order";Text[250])
        {
         DataClassification = ToBeClassified;
         TableRelation = Job;
        }
        field(26;"Billable";Text[250])
        {
         DataClassification = ToBeClassified;
         TableRelation = Job;
        }
        field(27;"Creation Date";Date)
        {
         DataClassification = ToBeClassified;
         TableRelation = Job;
        }
    }
    
    keys
    {
       key(PK; "Job No")
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
       
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}
page 60001 Toets
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = DataTable;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Customer Name"; CustomerName)
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}
query 80000 MyQuery
{
    QueryType = Normal;
    Caption = 'Toets Query';
    
    elements
    {
        dataitem(Sales_Order_Entity_Buffer; DataTable)
        {
            column(Bill_To_Customer ; CustomerName)
            {
              
            }
           
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnBeforeOpen()
    begin
        
    end;
}
 
