package org.wso2.internalapps.productqualitydashboard;

import ballerina.utils.logger;
import ballerina.lang.errors;
import ballerina.lang.files;
import ballerina.lang.jsons;
import ballerina.lang.blobs;

function getConfigData(string filePath)(json){

    files:File configFile = {path: filePath};

    try{
        files:open(configFile, "r");
        logger:debug(filePath + " file found");

    } catch (errors:Error err) {
        logger:error(filePath + " file not found. " + err.msg);
    }

    var content, numberOfBytes = files:read(configFile, 100000);
    logger:debug(filePath + " content read");

    files:close(configFile);
    logger:debug(filePath + " file closed");

    string configString = blobs:toString(content, "utf-8");

    try{
        json configJson = jsons:parse(configString);
        return configJson;

    } catch (errors:Error err) {
        logger:error("JSON syntax error found in "+ filePath + " " + err.msg);
        json configJson = jsons:parse(configString);
    }
    return null;

}

