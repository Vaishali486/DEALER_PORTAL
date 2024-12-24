using { DEALER_PORTAL} from '../db/MASTER_TABLES';

service ideal_fiori_approval_hierarchy {
    
    @odata.draft.enabled
    @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}
  ]
    entity MasterEntityAndType as projection on DEALER_PORTAL.MASTER_ENTITY_AND_TYPE;

     @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}
  ]
    entity MasterApprovalHierarchy as projection on DEALER_PORTAL.MASTER_APPROVAL_HIERARCHY;

      @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}
  ]
    entity MasterEntityCode as projection on DEALER_PORTAL.MASTER_ENTITY_CODE;

      @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}
  ]
    entity MasterIdealSettings as projection on DEALER_PORTAL.MASTER_IDEAL_SETTINGS;

      @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}
  ]
    entity MasterUserRole as projection on DEALER_PORTAL.MASTER_USER_ROLE;
       @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}
  ]
    entity MasterIdealUsers as projection on DEALER_PORTAL.MASTER_IDEAL_USERS;

      @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}
  ]
    entity MasterApprovalTypes as projection on DEALER_PORTAL.MASTER_APPROVAL_TYPES;

      @restrict: [
    { grant: '*', to:['ZIDEAL_SR_DM_ADMIN']}
  ]
    entity MasterUserEntityUsers as projection on DEALER_PORTAL.MASTER_USER_ENTITY_CODES;

    define view Users as
    select from MasterIdealUsers distinct {
        key USER_ID
    }where USER_ID !='';

    // annotate ideal_fiori_approval_hierarchy.MasterEntityAndType@(Common.SideEffects #ReactionItemCreationOrDeletion: {
    //     SourceEntities  : [TO_MASTER_APPROVAL_HIERARCHY],
    //     TargetProperties: ['TO_MASTER_APPROVAL_HIERARCHY/LEVEL']     
    // });

}