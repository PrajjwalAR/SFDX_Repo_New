public with sharing class CustomLookupLwcController1 {
    /**
     * @description          public method used to get look up data
     *
     * @param searchKey      
     * @param sObjectApiName 
     * @return               `list<sObject>`
     */
    @AuraEnabled(cacheable=true)
    public static list<sObject> fetchLookupData(string searchKey , string sObjectApiName) {    
        List <sObject> returnList = new List <sObject> ();
        string sWildCardText = '%' + searchKey + '%';
        string recordTypeDevName = 'Facilities_API';
        for (sObject obj: database.query('SELECT Id, Name, BillingStreet, BillingCity, BillingState, BillingPostalCode FROM ' 
        + String.escapeSingleQuotes(sObjectApiName) 
        + ' WHERE RecordType.DeveloperName = :recordTypeDevName'
        + ' AND (Name LIKE :sWildCardText OR BillingCity LIKE :sWildCardText OR BillingState LIKE :sWildCardText OR BillingPostalCode LIKE :sWildCardText)'
        + ' WITH SECURITY_ENFORCED ORDER BY createdDate DESC LIMIT 5')) {
            returnList.add(obj);
        }
        return returnList;
    }
    
    /**
     * @description          public method used to get a default record
     *
     * @param recordId       
     * @param sObjectApiName 
     * @return               `sObject`
     */
    @AuraEnabled
    public static sObject fetchDefaultRecord(string recordId , string sObjectApiName) {
        for (sObject obj: database.query('SELECT Id, Name FROM ' 
        + String.escapeSingleQuotes(sObjectApiName)
        + ' WHERE Id = : recordId WITH SECURITY_ENFORCED LIMIT 1')) {
            return obj;
        }
        return null;
    }
    public static final Integer PAGE_SIZE = 10;
    /**
     * @description          public method used to get lookup values
     *
     * @param searchKeyWord  
     * @param objectName     
     * @param filter         
     * @param fields         
     * @param jsonColumnData 
     * @param orderBy        
     * @param limitString    
     * @return               `List<SObject>`
     */
    @AuraEnabled(cacheable=true)
    public static List<SObject> fetchLookUpValues (String searchKeyWord, String objectName, String filter, String fields, String jsonColumnData, String orderBy, String limitString){
        
        objectName = String.escapeSingleQuotes(objectName);
        fields = String.escapeSingleQuotes(fields);
        List<sObject> returnList = new List<sObject> ();
        String selectStatement = '';
        if(!String.isEmpty(fields)) {
            selectStatement = 'SELECT Id, Name, ' + fields + ' FROM ';
        } else {
            selectStatement = 'SELECT Id, Name FROM ';
        }
        List<ColumnData> columnData = (List<ColumnData>)JSON.deserialize(jsonColumnData, List<ColumnData>.class);
        List<String> fieldsToQuery = new List<String>();
        SObjectType r = ((SObject)(Type.forName('Schema.'+objectName).newInstance())).getSObjectType();
        DescribeSObjectResult d = r.getDescribe();
        
        for(ColumnData data : columnData){
            if(d.fields.getMap().get(data.key) != null){
                if(d.fields.getMap().get(data.key).getDescribe().getType() == Schema.DisplayType.STRING){
                    fieldsToQuery.add(data.key);
                }
            }
        }
        String whereStatement = '';
        if(objectName == 'Contact') {
            whereStatement = buildNameWhereClause(fieldsToQuery, searchKeyWord);
        } else {
            whereStatement = buildWhereClause(fieldsToQuery, searchKeyWord);
        }
        String sQuery = selectStatement + objectName + ' ' + whereStatement;
        if(!String.isEmpty(filter)) {
            if (filter.containsIgnoreCase('Facilities_API')) {
                String facilities = 'Facilities_API';
                filter = 'AND (RecordType.DeveloperName = :facilities) ';
                sQuery += filter;
            }
        }
        String orderStatement;
        if (String.isNotBlank(orderBy)) {
            orderStatement = String.escapeSingleQuotes(orderBy);
        } else {
            orderStatement = 'ORDER BY CreatedDate DESC';
        }
        if (String.isNotBlank(limitString)) {
            orderStatement += ' ' + String.escapeSingleQuotes(limitString);
        } else {
            orderStatement += ' LIMIT 5';
        }
        sQuery += orderStatement;
        System.debug('query: ' + sQuery);
        List<sObject> lstOfRecords = Database.query(sQuery, AccessLevel.USER_MODE);
        for (SObject obj: lstOfRecords){
            returnList.add(obj);
        }
        return returnList;
    }
    /**
     * @description        public method used to get lookup values using a custom inner classs
     *
     * @param objectName   
     * @param columnString 
     * @param searchKey    
     * @param fieldToSort  
     * @param isAscending  
     * @param pageNumber   
     * @param fields       
     * @param filter       
     * @return             `CustomLookupTableResult`
     */
    @AuraEnabled(cacheable=true)
    public static CustomLookupTableResult fetchLookupValuesWithWrapper(String objectName, String columnString, String searchKey, String fieldToSort, Boolean isAscending, Integer pageNumber, String fields, String filter) {
        objectName = String.escapeSingleQuotes(objectName);
        columnString = String.escapeSingleQuotes(columnString);
        fieldToSort = String.escapeSingleQuotes(fieldToSort);
    
        CustomLookupTableResult result = new CustomLookupTableResult();
        List<String> fieldList = fields.split(',');
        List<ColumnData> columnData = (List<ColumnData>)JSON.deserialize(columnString, List<ColumnData>.class);
        Set<String> splitFields = new Set<String>(fieldList);
        List<String> fieldsToQuery = new List<String>();
        List<String> fieldsToQueryForWhere = new List<String>();
        SObjectType r = ((SObject)(Type.forName('Schema.'+objectName).newInstance())).getSObjectType();
        DescribeSObjectResult d = r.getDescribe();
        for(ColumnData data : columnData){
            if(data.key != 'Id' && data.key != 'Name' && !splitFields.contains(data.key)){
                fieldsToQuery.add(data.key);
            }
            if(d.fields.getMap().get(data.key) != null){
                if(d.fields.getMap().get(data.key).getDescribe().getType() == Schema.DisplayType.STRING){
                    fieldsToQueryForWhere.add(data.key);
                }
            }
        }
        String selectStatement = 'SELECT Id, Name ';
        if(!fieldsToQuery.isEmpty()) {
            for(String field : fieldsToQuery){
                if(!String.isBlank(field)){
                    selectStatement = selectStatement + ', ' + String.escapeSingleQuotes(field);
                }
            }
        } 
        selectStatement += ' FROM ';
        String whereStatement = '';
        if(objectName == 'Contact') {
            whereStatement = buildNameWhereClause(fieldsToQueryForWhere, searchKey);
        } else {
            whereStatement = buildWhereClause(fieldsToQueryForWhere, searchKey);
        }
        String sQuery = selectStatement + objectName + ' ' + whereStatement;
        String aggregateQuery = 'SELECT COUNT(Id)numRecords FROM ' + objectName + ' ' + whereStatement;
        if(!String.isEmpty(filter)) {
            if (filter.containsIgnoreCase('Facilities_API')) {
                String facilities = 'Facilities_API';
                filter = ' AND (RecordType.DeveloperName = :facilities) ';
            } else {
                filter = ' AND (RecordType.DeveloperName = :filter) ';
            }
            sQuery += filter;
            aggregateQuery += filter;
        }
        List<AggregateResult> lstOfRecords = Database.query(aggregateQuery, AccessLevel.USER_MODE);
        result.totalItemCount = (Integer)lstOfRecords[0].get('numRecords');
        sQuery = sQuery.removeEnd(')');
        if(String.isNotEmpty(fieldToSort)){
            sQuery += ' ORDER BY ' + fieldToSort;
            if(!isAscending){
                sQuery += ' DESC';
            }
            sQuery += ' NULLS LAST';
        }
        sQuery += ' LIMIT ' + PAGE_SIZE;
        Integer offsetNumber = (pageNumber-1) * PAGE_SIZE;
        sQuery = sQuery + ' OFFSET ' + offsetNumber;
        System.debug('query: ' + sQuery);
        List<Object> searchList = Database.query(sQuery, AccessLevel.USER_MODE);
        result.records = searchList;
        return result;
    }
    /**
     * @description                 private helper method used to dynamically build a where clause for a query
     *
     * @param fieldsToQueryForWhere 
     * @param searchKey             
     * @return                      `String`
     */
    private static String buildWhereClause(List<String> fieldsToQueryForWhere, String searchKey){
        String whereStatement = '';
        for(Integer i = 0; i<fieldsToQueryForWhere.size(); i++){
            if(i == 0){
                whereStatement = 'WHERE (Name LIKE \'%' + String.escapeSingleQuotes(searchKey) + '%\' OR ';
            }
            whereStatement += String.escapeSingleQuotes(fieldsToQueryForWhere[i]) + ' LIKE \'%' + String.escapeSingleQuotes(searchKey) + '%\' ';
            if(i < fieldsToQueryForWhere.size()-1){
                whereStatement = whereStatement + 'OR ';
            }
            if(i == fieldsToQueryForWhere.size()-1){
                whereStatement = whereStatement + ') ';
            }   
        }
        return whereStatement;
    }
    /**
     * @description                 public helper method used to dynamically build a where clause for a query
     *
     * @param fieldsToQueryForWhere 
     * @param searchKey             
     * @return                      `String`
     */ 
    public static String buildNameWhereClause(List<String> fieldsToQueryForWhere, String searchKey) {
        String whereStatement = '';
        for(Integer i = 0; i < fieldsToQueryForWhere.size(); i++) {
            if(i == 0) {
                whereStatement = 'WHERE (' + buildNameQuery(searchKey);
            } else {
                whereStatement += String.escapeSingleQuotes(fieldsToQueryForWhere[i]) + ' LIKE \'%' + String.escapeSingleQuotes(searchKey) + '%\' ';
            }
            if(i < fieldsToQueryForWhere.size() - 1) {
                whereStatement = whereStatement + 'OR ';
            }
        }
        whereStatement += ') ';
        return whereStatement;
    }
    /**
     * @description     private helper method
     *
     * @param searchKey 
     * @return          `String`
     */
    private static String buildNameQuery(String searchKey) {
        String whereStatement = '';
        List<String> searchTokens = searchKey.split(' ');
        if(searchTokens.size() > 1) {
            whereStatement = '(';
            for(Integer j = 0; j < searchTokens.size(); j++) {
                whereStatement += 'Name LIKE \'%' + String.escapeSingleQuotes(searchTokens[j]) + '%\'';
                if(j != searchTokens.size() - 1) {
                    whereStatement = whereStatement + ' AND ';
                }
            }
            whereStatement += ') ';
        } else {
            whereStatement = 'Name LIKE \'%' + String.escapeSingleQuotes(searchKey) + '%\' ';
        }
        return whereStatement;
    }
    /**
     * @description       : used to wrap return values in fetchLookupValuesWithWrapper method
     * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
     * @group             : Acumen Solutions, Inc
     * @last modified on  : 08-04-2023
    **/
    public with sharing class CustomLookupTableResult {
        @AuraEnabled
        public Integer totalItemCount { get; set; }
        @AuraEnabled
        public Object[] records { get; set; }
    }
    /**
     *  @description      : private inner class used to define colunm data
     *  @author           : ChangeMeIn@UserSettingsUnder.SFDoc
     *  @group            : Acumen Solutions, Inc
     *  @last modified on : 08-04-2023
    **/
    private class ColumnData{
        String key;
        String value;
        Boolean isClickable;
        Boolean isSortable;
    }
}