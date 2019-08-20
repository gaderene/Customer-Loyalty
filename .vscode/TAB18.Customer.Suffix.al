tableextension 50200 "Customer.SUFFIX" extends Customer
{

    fields
    {
        // Add changes to table fields here
        field(50200; "LoyaltyStatus.SUFFIX"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = Bronze,Silver,Gold;
            Caption = 'Loyalty Status';
        }
    }

}

