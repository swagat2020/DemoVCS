create external function FW_EXT_FN_AAS_CALCULATE_REFRESH(COUNTRY_CODE VARCHAR)
    returns variant
    api_integration = INT_CI_DEV_API_EXT_AZURE_FUNCTION
    as 'https://InvokeCalculateRefresh';
