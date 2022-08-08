namespace CAPM_SYN;

@cds.persistence.exists
entity syn_students
{
    key STUDENTID : Integer;
    FIRSTNAME : String;
	LASTNAME : String;
};

@cds.persistence.exists
entity syn_kna1
{
    key KUNNR : String(10);
    NAME1 : String(35);
	LAND1 : String(3);
};

@cds.persistence.exists
entity syn_mara
{
    key MATNR : String;
    ERNAM : String;
	MTART : String;
};

view v_customer as 
    select 
    key KUNNR as kunnr,
    NAME1 as name1 
    from syn_kna1;
