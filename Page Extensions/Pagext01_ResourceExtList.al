pageextension 50101 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 8.11.2021 -D. E. Veloper
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type") { ApplicationArea = all; }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                ApplicationArea = all;
                Visible = ShowMaxField;
            }
        }

    }

    actions
    {

    }
    trigger OnOpenPage()

    begin
        ShowType := (rec.GetFilter(Type) = '');
        ShowMaxField := (rec.GetFilter(Type) = format(rec.Type::Machine));
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        ShowType: Boolean;

}