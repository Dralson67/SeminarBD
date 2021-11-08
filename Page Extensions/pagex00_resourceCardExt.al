pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
// CSD 1.00 -8.11.2021 - D. E. Veloper
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; rec."CSD Resource Type")
            {
                ApplicationArea = all;
            }
            field("CSD Quantity Per day"; rec."CSD Quantity Per day")
            {
                ApplicationArea = all;
            }

        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants"; rec."CSD Maximum Participants")
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnAfterGetRecord()
    begin
        ShowMaxField := (rec.Type = rec.Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}