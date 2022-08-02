namespace CAPM_SYN;

// entity Books {
//   key ID : Integer;
//   title  : String;
//   stock  : Integer;
// }

@cds.persistence.exists
entity syn_MARA {
  key matnr : String(3);
  ernam  : String(12);
}

view v_materials as
    select 
    key matnr as matnr,
        ernam as ernam
    from syn_MARA;

@cds.persistence.exists
entity syn_EMPLOYEES {
  key personid : Integer;
  firstname  : String(255);
  lastname  : String(255);
  address  : String(255);
  phone  : String(15);
}
