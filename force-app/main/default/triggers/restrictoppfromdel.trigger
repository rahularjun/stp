trigger restrictoppfromdel on Opportunity (before delete) {

for(opportunity opp:trigger.old){
if(opp.amount>=10000){
opp.adderror('opportunity deletion not possible');
}
}
}