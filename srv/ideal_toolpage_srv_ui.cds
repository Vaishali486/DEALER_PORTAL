// using {ideal_sa_application} from './ideal_toolpage_srv';

// annotate ideal_sa_application.applicationMaster @(
//     Common.SideEffects #ChangeApplicationIcon : {
//         SourceProperties : [APPLICATION_ICON_URL],
//         TargetProperties   : [APPLICATION_ICON]
//     }
// );
// annotate ideal_sa_application.applicationMaster @(
//     Common.SideEffects #ChangeSAApplicationIcon : {
//         SourceEntities : [TO_SA_APPLICATION],
//         TargetEntities   : [TO_SA_APPLICATION]
//     }
// );