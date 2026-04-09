/*
=================================================================================
Quality Checks
=================================================================================
Script Purpose:
  This script performs various quality checks for data consistency, accuracy,
  and standardization across the 'silver' schema. it includes checks for:
    - Null or duplicate primary keys.
    - Unwanted spaces in string fields.
    - Data standardization and consistency.
    - Invalid data ranges and orders
    - Data consistency between related fields.

Usage Notes:
  - Run these checks after data loading silver layer.
  - Investigate and resolve any discrepancies found during the checks
=================================================================================
*/


	-- Check for unwanted spaces
		SELECT * FROM bronze.erp_px_cat_g1v2
		WHERE cat != TRIM(cat) OR subcat != TRIM(subcat) OR maintenance != TRIM(maintenance)

		-- Data Standardization & Consistency
		SELECT DISTINCT
		maintenance
		FROM bronze.erp_px_ca
