CREATE  VIEW EXECUTED_CALL_ATTRIBUTES AS SELECT cf.call_date_key,cf.campaign_key,cf.customer_key,cf.call_type_key,
cf.call_key,cf.plan_key,cf.resource_key,cf.org_support_data_key,cf.id, cf.cancellation_reason_code,cf.distance_from_expected_geo_location,
cf.expected_geo_location, cf.reason_for_geo_location_mismatch,cf.cancellation_geo_location,cf.start_geo_location, cf.end_geo_location,
cf.actual_duration,cf.parent_call_ref,cf.planned_date, cf.start_date,cf.end_date,cf.cancellation_date,cf.status,cf.accepted_order_nos,
cf.suggested_order_nos,cf.distance_travelled,cf.device_id,cf.customer_device_id, cf.is_planned,cf.is_planned_and_executed,cf.is_adhoc_and_executed,
'' as is_success, cf.is_primary_call,cf.is_sales_order_made,cf.is_covered ,rd.resource_code as res_cd ,cd.customer_id as Cust_ID,
cd.country_code as Country_Code FROM call_fact cf left outer join resource_dimension rd
on rd.resource_key = cf.resource_key left outer join customer_dimension cd on cd.customer_key = cf.customer_key;
on rd.resource_key = cf.resource_key left outer join customer_dimension cd on cd.customer_key = bv.customer_key;

