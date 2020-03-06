Comment on column parties_summary.party_index IS 'Position of the party in the parties array';
Comment on column parties_summary.parties_id IS '`id` in party object';
Comment on column parties_summary.roles IS 'JSONB list of the party roles';
Comment on column parties_summary.identifier IS 'Concatenation from `scheme` and `id` from `identifier` object in the form `<scheme>-<id>`';
Comment on column parties_summary.unique_identifier_attempt IS 'The `id` from party object if exists, otherwise the identifier described above if exists, otherwise the party name';
Comment on column parties_summary.parties_additionalidentifiers_ids IS 'JSONB list of the concatenating scheme and id of all additionalidentifier objects';
Comment on column parties_summary.parties_additionalidentifiers_count IS 'Count of additional identifiers';
Comment on column parties_summary.party IS 'JSONB of party object';

Comment on column buyer_summary.buyer IS 'JSONB of buyer object';
Comment on column buyer_summary.buyer_parties_id IS '`id` from buyer object';
Comment on column buyer_summary.buyer_identifier IS 'Concatenation from `scheme` and `id` from `identifier` object in the form `<scheme>-<id>`';
Comment on column buyer_summary.unique_identifier_attempt IS 'The `id` from buyer object if exists, otherwise the identifier described above if exists, otherwise the party name';
Comment on column buyer_summary.buyer_additionalidentifiers_ids IS 'JSONB list of the concatenating scheme and id of all additionalidentifier objects';
Comment on column buyer_summary.buyer_additionalidentifiers_count IS 'Count of additional identifires';
Comment on column buyer_summary.link_to_parties IS 'Does this buyer link to a party in the parties array using the `id` field from buyer object linking to the `id` field in a party object If this is true then 1, otherwise 0';
Comment on column buyer_summary.link_with_role IS 'If there is a link does the parties object have `buyer` it its roles list';
Comment on column buyer_summary.party_index IS 'If there is a link what is the index of the party in the `parties` array This can be used for joining to the `parties_summary` table';

Comment on column procuringentity_summary.procuringentity IS 'JSONB of procuringEntity object';
Comment on column procuringentity_summary.procuringentity_parties_id IS '`id` from procuringEntity object';
Comment on column procuringentity_summary.procuringentity_identifier IS 'Concatenation from `scheme` and `id` from `identifier` object in the form `<scheme>-<id>`';
Comment on column procuringentity_summary.unique_identifier_attempt IS 'The `id` from procuringEntity object if exists, otherwise the identifier described above if exists, otherwise the party name';
Comment on column procuringentity_summary.procuringentity_additionalidentifiers_ids IS 'JSONB list of the concatonating scheme and id of all additionalidentifier objects';
Comment on column procuringentity_summary.procuringentity_additionalidentifiers_count IS 'Count of additional identifires';
Comment on column procuringentity_summary.link_to_parties IS 'Does this procuringEntity link to a party in the parties array using the `id` field from buyer object linking to the `id` field in a party object If this is true then 1, otherwise 0';
Comment on column procuringentity_summary.link_with_role IS 'If there is a link does the parties object have `buyer` it its roles list';
Comment on column procuringentity_summary.party_index IS 'If there is a link what is the index of the party in the `parties` array This can be used for joining to the `parties_summary` table';

Comment on column tenderers_summary.tenderer_index IS 'Position of the tenderer in the tenderer array';
Comment on column tenderers_summary.tenderer IS 'JSONB of tenderer object';
Comment on column tenderers_summary.tenderer_parties_id IS '`id` from tenderer object';
Comment on column tenderers_summary.tenderer_identifier IS 'Concatenation from `scheme` and `id` from `identifier` object in the form `<scheme>-<id>`';
Comment on column tenderers_summary.unique_identifier_attempt IS 'The `id` from tenderer object if exists, otherwise the identifier described above if exists, otherwise the party name';
Comment on column tenderers_summary.tenderer_additionalidentifiers_ids IS 'JSONB list of the concatonating scheme and id of all additionalidentifier objects';
Comment on column tenderers_summary.tenderer_additionalidentifiers_count IS 'Count of additional identifiers';
Comment on column tenderers_summary.link_to_parties IS 'Does this tenderer link to a party in the parties array using the `id` field from buyer object linking to the `id` field in a party object If this is true then 1, otherwise 0';
Comment on column tenderers_summary.link_with_role IS 'If there is a link does the parties object have `buyer` it its roles list';
Comment on column tenderers_summary.party_index IS 'If there is a link what is the index of the party in the `parties` array This can be used for joining to the `parties_summary` table';

Comment on column planning_documents_summary.document_index IS 'Position of the document in the documents array';
Comment on column planning_documents_summary.document IS 'JSONB of the document';
Comment on column planning_documents_summary.documenttype IS '`documentType` field from the document object';
Comment on column planning_documents_summary.format IS '`format` field from the document object';

Comment on column planning_milestones_summary.milestone_index IS 'Position of milestone in milestone array';
Comment on column planning_milestones_summary.milestone IS 'JSONB of milestone object';
Comment on column planning_milestones_summary.type IS '`type` from milestone object';
Comment on column planning_milestones_summary.code IS '`code` from milestone object';
Comment on column planning_milestones_summary.status IS '`status` from milestone object';

Comment on column planning_summary.planning_budget_amount IS 'amount/amount from `budget` object';
Comment on column planning_summary.planning_budget_currency IS 'amount/currency from `budget` object';
Comment on column planning_summary.planning_budget_projectid IS '`projectID` from `budget object';
Comment on column planning_summary.documents_count IS 'Number of documents in documents array';
Comment on column planning_summary.documenttype_counts IS 'JSONB object with the keys as unique documentTypes and the values as count of the appearances of that `documentType` in the `documents` array';
Comment on column planning_summary.milestones_count IS 'Count of milestones';
Comment on column planning_summary.milestonetype_counts IS 'JSONB object with the keys as unique milestoneTypes and the values as a count of the appearances of that `milestoneType` in the `milestones` array';

Comment on column tender_documents_summary.document_index IS 'Position of the document in the documents array';
Comment on column tender_documents_summary.document IS 'JSONB of the document';
Comment on column tender_documents_summary.documenttype IS '`documentType` field from the document object';
Comment on column tender_documents_summary.format IS '`format` field from the document object';

Comment on column tender_items_summary.item_index IS 'Position of the item in the items array';
Comment on column tender_items_summary.item IS 'JSONB of item object';
Comment on column tender_items_summary.item_id IS '`id` field in item object';
Comment on column tender_items_summary.quantity IS '`quantity` from the item object';
Comment on column tender_items_summary.unit_amount IS '`amount` from the unit/value object';
Comment on column tender_items_summary.unit_currency IS '`currency` from the unit/value object';
Comment on column tender_items_summary.item_classifiaction IS 'Concatenation of classification/schema and classification/id';
Comment on column tender_items_summary.item_additionalidentifiers_ids IS 'JSONB list of the concatenation of additionalClassification/schema and additionalClassification/id';
Comment on column tender_items_summary.additional_classification_count IS 'Count of additional classifications';

Comment on column tender_milestones_summary.milestone_index IS 'Position of milestone in milestone array';
Comment on column tender_milestones_summary.milestone IS 'JSONB of milestone object';
Comment on column tender_milestones_summary.type IS '`type` from milestone object';
Comment on column tender_milestones_summary.code IS '`code` from milestone object';
Comment on column tender_milestones_summary.status IS '`status` from milestone object';

DO
$$
DECLARE stmt text;

BEGIN
    stmt := 
    'Comment on column %%1$s.tender_id IS ''`id` from `tender` object''; '
    'Comment on column %%1$s.tender_title IS ''`title` from `tender` object''; '
    'Comment on column %%1$s.tender_status IS ''`status` from `tender` object''; '
    'Comment on column %%1$s.tender_value_amount IS ''`amount` from `value` object''; '
    'Comment on column %%1$s.tender_value_currency IS ''`currency` from `value` object''; '
    'Comment on column %%1$s.tender_minvalue_amount IS ''`amount` from `minValue` object''; '
    'Comment on column %%1$s.tender_minvalue_currency IS ''`currency` from `minValue` object''; '
    'Comment on column %%1$s.tender_procurementmethod IS ''`procumentMethod` form `tender` object''; '
    'Comment on column %%1$s.tender_mainprocurementcategory IS ''`mainProcurementCategory` from tender object''; '
    'Comment on column %%1$s.tender_additionalprocurementcategories IS ''`additionalProcurementCategories` from tender object''; '
    'Comment on column %%1$s.tender_awardcriteria IS ''`awardCriteria` from tender object''; '
    'Comment on column %%1$s.tender_submissionmethod IS ''`submissionMethod` from tender object''; '
    'Comment on column %%1$s.tender_tenderperiod_startdate IS ''`startDate` from tenderPeriod object''; '
    'Comment on column %%1$s.tender_tenderperiod_enddate IS ''`endDate` from tenderPeriod object''; '
    'Comment on column %%1$s.tender_tenderperiod_maxextentdate IS ''`maxExtentDate` from tenderPeriod object''; '
    'Comment on column %%1$s.tender_tenderperiod_durationindays IS ''`durationInDays` from tenderPeriod object''; '
    'Comment on column %%1$s.tender_enquiryperiod_startdate IS ''`startDate` from enquiryPeriod object''; '
    'Comment on column %%1$s.tender_enquiryperiod_enddate IS ''`endDate` from enquiryPeriod object''; '
    'Comment on column %%1$s.tender_enquiryperiod_maxextentdate IS ''`maxExtentDate` from enquiryPeriod object''; '
    'Comment on column %%1$s.tender_enquiryperiod_durationindays IS ''`durationInDays` from enquiryPeriod object''; '
    'Comment on column %%1$s.tender_hasenquiries IS ''`hasEnquiries` from tender object''; '
    'Comment on column %%1$s.tender_eligibilitycriteria IS ''`elegibilitycriteria from tender object''; '
    'Comment on column %%1$s.tender_awardperiod_startdate IS ''`startDate` from awardPeriod object''; '
    'Comment on column %%1$s.tender_awardperiod_enddate IS ''`endDate` from awardPeriod object''; '
    'Comment on column %%1$s.tender_awardperiod_maxextentdate IS ''`maxExtentDate` from awardPeriod object''; '
    'Comment on column %%1$s.tender_awardperiod_durationindays IS ''`durationInDays` from awardPeriod object''; '
    'Comment on column %%1$s.tender_contractperiod_startdate IS ''`startDate` from awardPeriod object''; '
    'Comment on column %%1$s.tender_contractperiod_enddate IS ''`endDate` from awardPeriod object''; '
    'Comment on column %%1$s.tender_contractperiod_maxextentdate IS ''`maxExtentDate` from awardPeriod object''; '
    'Comment on column %%1$s.tender_contractperiod_durationindays IS ''`durationInDays` from awardPeriod object''; '
    'Comment on column %%1$s.tender_numberoftenderers IS ''`numberOfTenderers` from tender object''; '
    'Comment on column %%1$s.tenderers_count IS ''Count of amount of tenderers''; '
    'Comment on column %%1$s.documents_count IS ''Count of amount of tender documents''; '
    'Comment on column %%1$s.documenttype_counts IS ''JSONB object with the keys as unique documentTypes and the values as count of the appearances of that `documentType` in the `documents` array''; '
    'Comment on column %%1$s.milestones_count IS ''Count of milestones''; '
    'Comment on column %%1$s.milestonetype_counts IS ''JSONB object with the keys as unique milestoneTypes and the values as a count of the appearances of that `milestoneType` in the `milestones` array''; '
    'Comment on column %%1$s.items_count IS ''Count of items''; '
    ;
    execute format(stmt, 'tender_summary');
    execute format(stmt, 'tender_summary_with_data');
END;
$$;

Comment on column tender_summary_with_data.tender IS 'JSONB of tender object';

Comment on column award_documents_summary.award_index IS 'Position of the award in the awards array';
Comment on column award_documents_summary.document_index IS 'Position of the document in the documents array';
Comment on column award_documents_summary.document IS 'JSONB of the document';
Comment on column award_documents_summary.documenttype IS '`documentType` field from the document object';
Comment on column award_documents_summary.format IS '`format` field from the document object';

Comment on column award_items_summary.award_index IS 'Position of the award in the awards array';
Comment on column award_items_summary.item_index IS 'Position of the item in the items array';
Comment on column award_items_summary.item IS 'JSONB of item object';
Comment on column award_items_summary.item_id IS '`id` field in item object';
Comment on column award_items_summary.quantity IS '`quantity` from the item object';
Comment on column award_items_summary.unit_amount IS '`amount` from the unit/value object';
Comment on column award_items_summary.unit_currency IS '`currency` from the unit/value object';
Comment on column award_items_summary.item_classifiaction IS 'Concatenation of classification/schema and classification/id';
Comment on column award_items_summary.item_additionalidentifiers_ids IS 'JSONB list of the concatenation of additionalClassification/schema and additionalClassification/id';
Comment on column award_items_summary.additional_classification_count IS 'Count of additional classifications';

Comment on column award_suppliers_summary.award_index IS 'Position of the award in the awards array';
Comment on column award_suppliers_summary.supplier_index IS 'Position of the supplier in the supplier array';
Comment on column award_suppliers_summary.supplier IS 'JSONB of supplier object';
Comment on column award_suppliers_summary.supplier_parties_id IS 'id` from the supplier object';
Comment on column award_suppliers_summary.supplier_identifier IS 'Concatenation from `scheme` and `id` from `identifier` object in the form `<scheme>-<id>`';
Comment on column award_suppliers_summary.unique_identifier_attempt IS 'The `id` from party object if exists, otherwise the identifier described above if exists, otherwise the party name';
Comment on column award_suppliers_summary.supplier_additionalidentifiers_ids IS 'JSONB list of the concatenating scheme and id of all additionalidentifier objects';
Comment on column award_suppliers_summary.supplier_additionalidentifiers_count IS 'Count of additional identifiers';
Comment on column award_suppliers_summary.link_to_parties IS 'Does this buyer link to a party in the parties array using the `id` field from buyer object linking to the `id` field in a party object If this is true then 1, otherwise 0';
Comment on column award_suppliers_summary.link_with_role IS 'If there is a link does the parties object have `buyer` it its roles list';
Comment on column award_suppliers_summary.party_index IS 'Position of the party in the parties array';

Comment on column awards_summary.award_index IS 'Position of the award in the awards array';
Comment on column awards_summary.award_id IS '`id` field from award object';
Comment on column awards_summary.award_title IS '`title` field from award object';
Comment on column awards_summary.award_status IS '`status` field from award object';
Comment on column awards_summary.award_value_amount IS '`value` field from award/amount object';
Comment on column awards_summary.award_value_currency IS '`currency` field from award/amount object';
Comment on column awards_summary.award_date IS '`date` field from award object';
Comment on column awards_summary.award_contractperiod_startdate IS '`startDate` field from contractPeriod';
Comment on column awards_summary.award_contractperiod_enddate IS '`endDate` field from contractPeriod';
Comment on column awards_summary.award_contractperiod_maxextentdate IS '`maxExtentDate` field from contractPeriod';
Comment on column awards_summary.award_contractperiod_durationindays IS '`durationInDays` field from contractPeriod';
Comment on column awards_summary.suppliers_count IS 'The number of suppliers declared for this award.';
Comment on column awards_summary.documents_count IS 'Number of documents in documents array';
Comment on column awards_summary.documenttype_counts IS 'JSONB object with the keys as unique documentTypes and the values as count of the appearances of that `documentType` in the `documents` array';
Comment on column awards_summary.items_count IS 'Count of items';
Comment on column awards_summary.award IS 'JSONB of award object';

Comment on column contract_documents_summary.contract_index IS 'Position of contract in contracts array';
Comment on column contract_documents_summary.document_index IS 'Position of the document in the documents array';
Comment on column contract_documents_summary.document IS 'JSONB of the document';
Comment on column contract_documents_summary.documenttype IS '`documentType` field from the document object';
Comment on column contract_documents_summary.format IS '`format` field from the document object';

Comment on column contract_implementation_documents_summary.contract_index IS 'Position of contract in contracts array';
Comment on column contract_implementation_documents_summary.document_index IS 'Position of the document in the documents array';
Comment on column contract_implementation_documents_summary.document IS 'JSONB of the document';
Comment on column contract_implementation_documents_summary.documenttype IS '`documentType` field from the document object';
Comment on column contract_implementation_documents_summary.format IS '`format` field from the document object';

Comment on column contract_implementation_milestones_summary.contract_index IS 'Position of contract in contracts array';
Comment on column contract_implementation_milestones_summary.milestone_index IS 'Position of milestone in milestone array';
Comment on column contract_implementation_milestones_summary.milestone IS 'JSONB of milestone object';
Comment on column contract_implementation_milestones_summary.type IS '`type` from milestone object';
Comment on column contract_implementation_milestones_summary.code IS '`code` from milestone object';
Comment on column contract_implementation_milestones_summary.status IS '`status` from milestone object';

Comment on column contract_implementation_transactions_summary.contract_index IS 'Position of contract in contracts array';
Comment on column contract_implementation_transactions_summary.transaction_index IS 'Position of transaction in transaction array';
Comment on column contract_implementation_transactions_summary.transaction_amount IS '`amount` field from either amount object or value object';
Comment on column contract_implementation_transactions_summary.transaction_currency IS '`currency` field from either amount object or value object';

Comment on column contract_items_summary.contract_index IS 'Position of contract in contracts array';
Comment on column contract_items_summary.item_index IS 'Position of item in items array';
Comment on column contract_items_summary.item IS 'JSONB of item object';
Comment on column contract_items_summary.item_id IS '`id` field in item object';
Comment on column contract_items_summary.quantity IS '`quantity` from the item object';
Comment on column contract_items_summary.unit_amount IS '`amount` from the unit/value object';
Comment on column contract_items_summary.unit_currency IS '`currency` from the unit/value object';
Comment on column contract_items_summary.item_classifiaction IS 'Concatenation of classification/schema and classification/id';
Comment on column contract_items_summary.item_additionalidentifiers_ids IS 'JSONB list of the concatenation of additionalClassification/schema and additionalClassification/id';
Comment on column contract_items_summary.additional_classification_count IS 'Count of additional classifications';

Comment on column contract_milestones_summary.contract_index IS 'Position of contract in contracts array';
Comment on column contract_milestones_summary.milestone_index IS 'Position of milestone in milestone array';
Comment on column contract_milestones_summary.milestone IS 'JSONB of milestone object';
Comment on column contract_milestones_summary.type IS '`type` from milestone object';
Comment on column contract_milestones_summary.code IS '`code` from milestone object';
Comment on column contract_milestones_summary.status IS '`status` from milestone object';

Comment on column contracts_summary.contract_index IS 'Position of contract in contracts array';
Comment on column contracts_summary.award_id IS '`awardID` field in contract object';
Comment on column contracts_summary.link_to_awards IS 'If there is an award with the above `awardID` then 1 otherwise 0';
Comment on column contracts_summary.contract_id IS '`id` field from contract object';
Comment on column contracts_summary.contract_title IS '`title` field from contract object';
Comment on column contracts_summary.contract_status IS '`status` field from contract object';
Comment on column contracts_summary.contract_value_amount IS '`amount` field from value object';
Comment on column contracts_summary.contract_value_currency IS '`currency` field from value object';
Comment on column contracts_summary.datesigned IS '`dateSigned` from contract object';
Comment on column contracts_summary.contract_period_startdate IS '`startDate` field from contractPeriod';
Comment on column contracts_summary.contract_period_enddate IS '`endDate` field from contractPeriod';
Comment on column contracts_summary.contract_period_maxextentdate IS '`maxExtentDate` field from contractPeriod';
Comment on column contracts_summary.contract_period_durationindays IS '`durationInDays` field from contractPeriod';
Comment on column contracts_summary.documents_count IS 'Number of documents in documents array';
Comment on column contracts_summary.documenttype_counts IS 'JSONB object with the keys as unique documentTypes and the values as count of the appearances of that `documentType` in the `documents` array';
Comment on column contracts_summary.milestones_count IS 'Count of milestones';
Comment on column contracts_summary.milestonetype_counts IS 'JSONB object with the keys as unique milestoneTypes and the values as a count of the appearances of that `milestoneType` in the `milestones` array';
Comment on column contracts_summary.items_count IS 'Count of items';
Comment on column contracts_summary.implementation_documents_count IS 'Number of documents in documents array';
Comment on column contracts_summary.implementation_documenttype_counts IS 'JSONB object with the keys as unique documentTypes and the values as count of the appearances of that `documentType` in the `documents` array';
Comment on column contracts_summary.implementation_milestones_count IS 'Number of documents in documents array';
Comment on column contracts_summary.implementation_milestonetype_counts IS 'JSONB object with the keys as unique milestoneTypes and the values as count of the appearances of that `milestoneType` in the `milestone` array';
Comment on column contracts_summary.contract IS 'JSONB of contract object';


DO
$$
DECLARE stmt text;

BEGIN
    stmt := 
    'Comment on column %%1$s.table_id IS ''`id` from the either release, compiled_release or release tables in kingfisher process where this row was generated from''; '
    'Comment on column %%1$s.package_data_id IS ''`id` from package_data table''; '
    'Comment on column %%1$s.package_version IS ''OCDS version gathered from the `version` field in package''; '
    'Comment on column %%1$s.release_date IS ''`date` field from release''; '
    'Comment on column %%1$s.release_tag IS ''JSONB list of `tags` field from release''; '
    'Comment on column %%1$s.release_language IS ''`language` field from release object''; '
    'Comment on column %%1$s.role_counts IS ''JSONB object with the keys as unique `roles` and the values as count of the appearances of those `roles`''; '
    'Comment on column %%1$s.total_roles IS ''Total amount of roles specified across all parties''; '
    'Comment on column %%1$s.total_parties IS ''Count of parties''; '
    'Comment on column %%1$s.award_count IS ''Count of awards''; '
    'Comment on column %%1$s.first_award_date IS ''Earliest `date` in all award objects''; '
    'Comment on column %%1$s.last_award_date IS ''Latest `date` in all award objects''; '
    'Comment on column %%1$s.total_award_documents IS ''The sum of `documents_count` for each `award` in this release''; '
    'Comment on column %%1$s.total_award_items IS ''Count of all items in all awards''; '
    'Comment on column %%1$s.total_award_suppliers IS ''The sum of `suppliers_count` for each `award` in this release''; '
    'Comment on column %%1$s.award_amount IS ''Total of all value/amount across awards NOTE: This ignores the fact that amounts could be of different currencies and sums them anyway''; '
    'Comment on column %%1$s.unique_award_suppliers IS ''A count of distinct suppliers for all awards for this release, based on the `unique_identifier_attempt` field''; '
    'Comment on column %%1$s.award_documenttype_counts IS ''JSONB object with the keys as unique awards/documents/documentType and the values as count of the appearances of those documentTypes''; '
    'Comment on column %%1$s.contract_count IS ''Count of contracts''; '
    'Comment on column %%1$s.total_contract_link_to_awards IS ''Position of the party in the parties array''; '
    'Comment on column %%1$s.contract_amount IS ''Total of all value/amount across contracts NOTE: This ignores the fact that amounts could be of different currencies and sums them anyway''; '
    'Comment on column %%1$s.first_contract_datesigned IS ''First `dateSigned` across all contracts''; '
    'Comment on column %%1$s.last_contract_datesigned IS ''Last `dateSigned` across all contracts''; '
    'Comment on column %%1$s.total_contract_documents IS ''Count of contracts/documents''; '
    'Comment on column %%1$s.total_contract_milestones IS ''Count of contracts/milestones''; '
    'Comment on column %%1$s.total_contract_items IS ''Count of contracts/items''; '
    'Comment on column %%1$s.total_contract_implementation_documents IS ''Count of contracts/implementation/documents''; '
    'Comment on column %%1$s.total_contract_implementation_milestones IS ''Count of contracts/implementation/milestones''; '
    'Comment on column %%1$s.contract_documenttype_counts IS ''JSONB object with the keys as unique contracts/documents/documentType and the values as count of the appearances of those documentTypes''; '
    'Comment on column %%1$s.contract_implemetation_documenttype_counts IS ''JSONB object with the keys as unique contracts/implementation/documents/documentType and the values as count of the appearances of those documentTypes''; '
    'Comment on column %%1$s.contract_milestonetype_counts IS ''JSONB object with the keys as unique contracts/milestone/milestoneType and the values as count of the appearances of those milestoneTypes''; '
    'Comment on column %%1$s.contract_implementation_milestonetype_counts IS ''JSONB object with the keys as unique contracts/implementation/documents/milestoneType and the values as count of the appearances of those milestoneType''; '
    'Comment on column %%1$s.total_documenttype_counts IS ''JSONB object with the keys as unique documentTypes from all documents in the release and the values as count of the appearances of those documentType''; '
    'Comment on column %%1$s.total_documents IS ''Count of documents in the release''; '
    'Comment on column %%1$s.milestonetype_counts IS ''JSONB object with the keys as unique milestoneTypes from all milestones in the release and the values as count of the appearances of those milestoneType''; '
    'Comment on column %%1$s.total_milestones IS ''Count of milestones in the release''; '
    ;
    execute format(stmt, 'release_summary');
    execute format(stmt, 'release_summary_with_checks');
    execute format(stmt, 'release_summary_with_data');
END;

$$;


DO
$$
DECLARE stmt text;

BEGIN
    stmt := 
    'Comment on column %%1$s.source_id IS ''`source_id` from kingfisher process collection table''; '
    'Comment on column %%1$s.data_version IS ''`data_version` from kingfisher process collection table''; '
    'Comment on column %%1$s.store_start_at IS ''`store_start_at` from kingfisher process collection table''; '
    'Comment on column %%1$s.store_end_at IS ''`store_end_at` from kingfisher process collection table''; '
    'Comment on column %%1$s.sample IS ''`sample` from kingfisher process collection table''; '
    'Comment on column %%1$s.transform_type IS ''`transform_type` from kingfisher process collection table''; '
    'Comment on column %%1$s.transform_from_collection_id IS ''`transform_from_collection_id` from kingfisher process collection table''; '
    'Comment on column %%1$s.deleted_at IS ''`deleted_at` from kingfisher process collection table''; '
    ;
    execute format(stmt, 'release_summary_with_checks');
    execute format(stmt, 'release_summary_with_data');
END;

$$;

Comment on column release_summary_with_checks.release_check IS 'JSONB of Data Review Tool output which includes validation errors and additional field information';
Comment on column release_summary_with_checks.release_check11 IS 'JSONB of Data Review Tool output run against 11 version of OCDS even if the data is from 10';
Comment on column release_summary_with_checks.record_check IS 'JSONB of Data Review Tool output which includes validation errors and additional field information';
Comment on column release_summary_with_checks.record_check11 IS 'JSONB of Data Review Tool output run against 11 version of OCDS even if the data is from 10';

Comment on column release_summary_with_data.data IS '`data` from kingfisher process data table This is the whole release in JSONB';
Comment on column release_summary_with_data.package_data IS '`data` from kingfisher process package_data table This is the package data in either a release or record package';