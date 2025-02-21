using { DEALER_PORTAL_RETAILER_REGISTRATION } from '../db/RETAILER_MASTER_TABLES';
using { DEALER_PORTAL_RETAILER_REGISTRATION as secondaryView} from '../db/RETAILER_TRANSACTION_TABLES';
// using {DEALER_PORTAL} from '../db/MASTER_TABLES';

// VIEW "IDEAL_INVOICE_DETAILS" AS 
// -- namespace iDEAL.View;
// -- @Schema: 'IDEAL'
// -- context IDEAL_VIEW_INVOICE
// -- {
   View IDEAL_INVOICE_DETAILS AS
    SELECT FROM 
    secondaryView.RETAILER_INVOICE_HEADER AS IH
    INNER JOIN secondaryView.RETAILER_DELIVERY_HEADER AS DH ON IH.DELIVERY_NO = DH.DELIVERY_NO
    INNER JOIN secondaryView.RETAILER_INVOICE_ITEM AS II ON IH.INVOICE_NO = II.INVOICE_NO
    INNER JOIN secondaryView.RETAILER_DETAILS AS RD ON IH.RETAILER_ID = RD.RETAILER_ID
    INNER JOIN secondaryView.RETAILER_ADDRESS_DETAIL AS RA ON IH.RETAILER_ID = RA.RETAILER_ID
    INNER JOIN secondaryView.RETAILER_DELIVERY_ITEM AS DI ON IH.DELIVERY_NO = DI.DELIVERY_NO
    // INNER JOIN DEALER_PORTAL.MASTER_REGION AS REM ON REM.BLAND = RA.REGION
    // INNER JOIN DEALER_PORTAL_RETAILER_REGISTRATION.CITY_MASTER AS CM ON CM.CITY_CODE = RA.CITY
//     /*INNER JOIN "iDEAL.View::IDEAL_VIEW_INVOICE.TOTAL_AMOUNT" AS TA ON II.INVOICE_ITEM_NO = TA.INVOICE_ITEM_NO*/
    {
        key IH.INVOICE_NO,
        IH.CREATION_DATE,
        IH.DELIVERY_NO,
        IH.SO_NO,
        DH.TRANSPORTER_NAME,
        DH.LR_NO,
        DH.TOTAL_NO_PACKAGES,
        DH.E_WAY_BILL_NO,
        DH.E_WAY_BILL_DATE,
        DH.SHIPPING_CHARGES,
        DH.VEHICLE_NO,
        DH.GROSS_WEIGHT,
        RD.RETAILER_NAME,
        RD.RETAILER_ID,
        RA.TELEPHONE_NO,
        RA.MOBILE_NO,
        RD.REGISTERED_TAX_ID,
        RA.ADDRESS_TYPE,
        RA.ADDRESS_LINE_1,
        RA.ADDRESS_LINE_2,
        RA.ADDRESS_LINE_3,
        RA.CITY,
        RA.REGION,
        DI.MATERIAL_GROUP,
        DI.MATERIAL_GROUP_DESC,
        DI.MATERIAL_CODE,
        DI.MATERIAL_DESC,
        II.INVOICE_QUANTITY,
        // II.UNIT_OF_MEASURE,
        // II.AMOUNT,
        II.CGST_AMOUNT,
        II.SGST_AMOUNT,
        II.IGST_AMOUNT,
        II.DISC_PERC,
        II.HSN_CODE,
        II.BASE_PRICE as PRICE,
        II.TOTAL_AMOUNT,
//         /*TA."TOTAL_SUM_AMOUNT"*/
        // SUM(II.TOTAL_AMOUNT) as TOTAL_SUM_AMOUNT : Double
        
    }
    
    GROUP BY 
        IH.INVOICE_NO,
        IH.CREATION_DATE,
        IH.DELIVERY_NO,
        IH.SO_NO,
        DH.TRANSPORTER_NAME,
        DH.LR_NO,
        DH.TOTAL_NO_PACKAGES,
        DH.E_WAY_BILL_NO,
        DH.E_WAY_BILL_DATE,
        DH.SHIPPING_CHARGES,
        DH.VEHICLE_NO,
        DH.GROSS_WEIGHT,
        RD.RETAILER_NAME,
        RD.RETAILER_ID,
        RA.TELEPHONE_NO,
        RA.MOBILE_NO,
        RD.REGISTERED_TAX_ID,
        RA.ADDRESS_TYPE,
        RA.ADDRESS_LINE_1,
        RA.ADDRESS_LINE_2,
        RA.ADDRESS_LINE_3,
        RA.CITY,
        RA.REGION,
        DI.MATERIAL_GROUP,
        DI.MATERIAL_GROUP_DESC,
        DI.MATERIAL_CODE,
        DI.MATERIAL_DESC,
        II.INVOICE_QUANTITY,
        // II.UNIT_OF_MEASURE,
        // II.AMOUNT,
        II.CGST_AMOUNT,
        II.SGST_AMOUNT,
        II.IGST_AMOUNT,
        II.DISC_PERC,
        II.HSN_CODE,
        II.BASE_PRICE,
        II.TOTAL_AMOUNT;