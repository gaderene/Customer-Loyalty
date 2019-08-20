tableextension 50201 "Sales Header.COL.US" extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        Field(50200; "loyaltyStatus.COL.US"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = Bronze,Silver,Gold;
            Caption = 'Loyalty Status';
            Editable = false;
        }
    }
}
tableextension 50202 "Sales Invoice Header.COL.US" extends "Sales Invoice Header"
{
    fields
    {
        field(50200; "loyalytStatus.COL.US"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = Bronze,Silver,Gold;
            Caption = 'Loyalty Status';

        }
    }
}
pageextension 50201 "Sales Order.COL.US" extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field("loyaltyStatus.COL.US"; "loyaltyStatus.COL.US") { }
        }
    }
}

pageextension 50202 "Posted Sales Invoice.COL.US" extends "Posted Sales Invoice"
{
    layout
    {
        addlast(General)
        {
            field("loyaltyStatus.COL.US"; "loyalytStatus.COL.US") { }
        }
    }
}