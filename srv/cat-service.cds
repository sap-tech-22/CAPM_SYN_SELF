using CAPM_SYN as my from '../db/data-model';

service CatalogService {
    entity students as projection on my.syn_students
    entity customers as projection on my.v_customer;
    entity customers_syn as projection on my.syn_kna1;
    entity materials as projection on my.syn_mara;
}