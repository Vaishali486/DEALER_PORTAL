using {VIEW_REQUEST_ACTIVE_STATUS,
VIEW_REQUEST_REJECTED_STATUS,
VIEW_ENTITY_CODE_COUNT,
VIEW_REQUEST_ACTION_STATUS,
VIEW_REQUEST_DISTRIBUTOR_TYPE,
VIEW_REQUEST_COUNTER_STATUS,
VIEW_REQUEST_TYPE_COUNT,
VIEW_REQUEST_ALL_STATUS_COUNT,
VIEW_TURN_AROUND_TIME,
REQ_TURNAROUND,
REQUEST_TAT,
APPROVAL_PENDING
} from '../db/MASTER_TABLES';
using {DEALER_PORTAL} from '../db/TRANSACTION_TABLES';


service ideal_dashboard_srv {

 @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity RequestInfo as projection on DEALER_PORTAL.REQUEST_INFO;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity ViewRequestActiveStatus as projection on VIEW_REQUEST_ACTIVE_STATUS;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity ViewRequestRejectedStatus as projection on VIEW_REQUEST_REJECTED_STATUS;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity ViewrequestActionStatus as projection on VIEW_REQUEST_ACTION_STATUS;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity ViewEntityCodeCount as projection on VIEW_ENTITY_CODE_COUNT;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity ViewRequestDistributorType as projection on VIEW_REQUEST_DISTRIBUTOR_TYPE;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity ViewRequestCounterStatus as projection on VIEW_REQUEST_COUNTER_STATUS;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity ViewRequestTypeCount as projection on VIEW_REQUEST_TYPE_COUNT;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity ViewRequestAllStatusCount as projection on VIEW_REQUEST_ALL_STATUS_COUNT;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity ViewTurnAroundTime as projection on VIEW_TURN_AROUND_TIME;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity ReqTurnaround as projection on REQ_TURNAROUND;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity RequestTat as projection on REQUEST_TAT;
     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}]
    entity ApprovalPending as projection on APPROVAL_PENDING;

}