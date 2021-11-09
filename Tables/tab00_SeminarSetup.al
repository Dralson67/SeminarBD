table 50100 "CSD Seminar Setup"
{
    DataClassification = ToBeClassified;
    Caption = 'Seminar setup';
    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            DataClassification = AccountData;
            Caption = 'Primary key';
        }
        field(20; "Seminar Nos."; Code[20])
        {
            DataClassification = AccountData;
            Caption = 'Seminar Nos.';
            TableRelation = "No. Series";
        }
        field(30; "Seminar Registration Nos"; Code[20])
        {
            DataClassification = AccountData;
            Caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";
        }
        field(40; "Posted Seminar Reg. Nos."; Code[20])
        {
            DataClassification = AccountData;
            Caption = 'Posted Seminar Reg. Nos.';
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Primary key")
        {
            Clustered = true;
        }
    }
}