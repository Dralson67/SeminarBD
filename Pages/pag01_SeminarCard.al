page 50101 "CSD Seminar Card"
// CSD1.00 9.11.2021 D.E.Veloper
// lab 5 task 5
{
    PageType = Card;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar';


    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; rec."No.")
                {
                    ApplicationArea = All;
                    AssistEdit = true;
                    trigger OnAssistEdit()

                    begin
                        if rec.AssistEdit then
                            CurrPage.Update;
                    end;
                }
                field(Name; rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Search Name"; rec."Search Name")
                {
                    ApplicationArea = All;
                }
                field("Seminar Duration"; rec."Seminar Duration")
                {
                    ApplicationArea = All;
                }
                field("Minimum Participants"; rec."Minimum Participants")
                {
                    ApplicationArea = All;
                }
                field("Maximum Participants"; rec."Maximum Participants")
                {
                    ApplicationArea = All;
                }
                field(Blocked; rec.Blocked)
                {
                    ApplicationArea = All;
                }
                field("Last Date modified"; rec."Last Date modified")
                {
                    ApplicationArea = All;
                }

            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("VAT Prod. Posting Group"; rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Seminar price"; rec."Seminar price")
                {
                    ApplicationArea = All;
                }
            }
        }

        area(FactBoxes)
        {
            systempart("Links"; Links)
            {
                ApplicationArea = all;
            }
            systempart("Notes"; Notes)
            {
                ApplicationArea = all;
            }
        }

    }
    actions
    {
        area(Navigation)
        {
            group("Seminar")
            {
                action("Comments")
                {
                    RunObject = page "Comment Sheet";
                    RunPageLink = "Table Name" = const("CSD Seminar"), "No." = field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ApplicationArea = all;
                }
            }
        }
    }
}