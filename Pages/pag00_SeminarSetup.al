page 50100 "CSD Seminar Setup"
//CSD1.00 9.11.2021 - D.E.Veloper
//Lab5 task 4
{
    PageType = Card;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;


    layout
    {
        area(Content)
        {
            group(Numbering)

            {
                Caption = 'Numbering';
                field("Seminar Nos."; rec."Seminar Nos.")
                {
                    ApplicationArea = All;

                }
                field("Seminar Registration Nos"; rec."Seminar Registration Nos")
                {
                    ApplicationArea = All;

                }
                field("Posted Seminar Reg. Nos."; rec."Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()

    begin
        if not rec.get then begin
            rec.init;
            rec.insert;
        end;
    end;
}