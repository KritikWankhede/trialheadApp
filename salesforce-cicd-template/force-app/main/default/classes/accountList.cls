public with sharing class accountList {
    @AuraEnabled(cacheable=true)
    public static List<Account> methodName(){
        try {
            return [Select Id,Name from Account ];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}