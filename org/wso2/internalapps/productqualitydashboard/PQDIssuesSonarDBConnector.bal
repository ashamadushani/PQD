package org.wso2.internalapps.productqualitydashboard;

import ballerina.utils.logger;
import ballerina.lang.jsons;
import ballerina.lang.errors;

function getSQLconfigData(json configData)(map){

    string jdbcUrl;
    string mySQLusername;
    string mySQLpassword;

    try {
        jdbcUrl = jsons:getString(configData, "$.jdbcUrl");
        mySQLusername = jsons:getString(configData, "$.SQLusername");
        mySQLpassword = jsons:getString(configData, "$.SQLpassword");

    } catch (errors:Error err) {
        logger:error("Properties not defined in config.json: " + err.msg );
        jdbcUrl = jsons:getString(configData, "$.jdbcUrl");
        mySQLusername = jsons:getString(configData, "$.SQLusername");
        mySQLpassword = jsons:getString(configData, "$.SQLpassword");
    }

    map propertiesMap = {"jdbcUrl": jdbcUrl,"username": mySQLusername,"password": mySQLpassword};

    return propertiesMap;

}