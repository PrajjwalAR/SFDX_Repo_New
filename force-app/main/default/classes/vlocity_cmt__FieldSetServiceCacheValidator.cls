/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class FieldSetServiceCacheValidator {
    global FieldSetServiceCacheValidator() {

    }
    global static vlocity_cmt.FieldSetServiceCacheValidator.ClearResult clearAllCachesForSObject(Schema.SObjectType sobjType) {
        return null;
    }
    global static vlocity_cmt.FieldSetServiceCacheValidator.ClearResult clearInconsistentCaches(vlocity_cmt.FieldSetServiceCacheValidator.ValidationResult validationResult) {
        return null;
    }
    global static vlocity_cmt.FieldSetServiceCacheValidator.ValidationResult validateCache(vlocity_cmt.FieldSetServiceCacheValidator.ValidatorConfig config) {
        return null;
    }
global class CacheIssue {
    global String cacheKey;
    global String cacheType;
    global String description;
    global String fieldName;
    global String issueType;
    global String recommendation;
    global String severity;
    global String sObjectName;
    global CacheIssue() {

    }
}
global class ClearResult {
    global List<String> clearedKeys;
    global List<String> failedKeys;
    global Integer keysCleared;
    global String message;
    global Boolean success;
    global ClearResult() {

    }
}
global class SObjectCacheHealth {
    global Integer cachedFields;
    global Boolean hasFieldCache;
    global Boolean hasFieldDisplayTypeCache;
    global Boolean hasFieldMapCache;
    global Boolean hasNameLabelPairCache;
    global Boolean hasNormalizedFieldMapCache;
    global Boolean hasRelationshipNameCache;
    global Boolean hasSchemaNameCache;
    global List<vlocity_cmt.FieldSetServiceCacheValidator.CacheIssue> issues;
    global Integer missingFields;
    global Integer orphanedFields;
    global Integer totalFields;
    global SObjectCacheHealth() {

    }
}
global class ValidationResult {
    global List<String> clearedKeys;
    global Map<String,vlocity_cmt.FieldSetServiceCacheValidator.SObjectCacheHealth> healthByObject;
    global Integer inconsistenciesFound;
    global List<vlocity_cmt.FieldSetServiceCacheValidator.CacheIssue> issues;
    global Boolean isValid;
    global String summary;
    global Integer totalCacheEntriesChecked;
    global Integer totalSObjectsChecked;
    global ValidationResult() {

    }
}
global class ValidatorConfig {
    global Boolean autoClear;
    global String scope;
    global List<Schema.SObjectType> sObjectTypesToValidate;
    global ValidatorConfig() {

    }
}
}
