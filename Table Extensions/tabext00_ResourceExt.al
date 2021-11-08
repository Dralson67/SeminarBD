tableextension 50100 "CSD ResourceExt" extends Resource
// CSD1.00 - 5.11.2021 - D. E. Veloper

{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        field(50101; "CSD Resource Type"; Option)
        {

            Caption = 'Resource type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';

        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity Per day"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity Per Day';
        }

    }
}