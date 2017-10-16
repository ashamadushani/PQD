package org.wso2.internalapps.productqualitydashboard;

const string CONFIG_PATH = "config.json";

const string API_VERSION = "v1.0";

const string INSERT_SNAPSHOT_DETAILS="INSERT INTO sonar_issues_date_table (date) VALUES (?)";

const string GET_SNAPSHOT_ID="SELECT snapshot_id FROM sonar_issues_date_table  ORDER BY snapshot_id DESC LIMIT 1";

const string INSERT_SONAR_ISSUES="INSERT INTO sonar_issues_table(snapshot_id,date,project_key,BLOCKER_BUG,CRITICAL_BUG,MAJOR_BUG,"+
                                 "MINOR_BUG,INFO_BUG,BLOCKER_CODE_SMELL,CRITICAL_CODE_SMELL,MAJOR_CODE_SMELL,MINOR_CODE_SMELL,"+
                                 "INFO_CODE_SMELL,BLOCKER_VULNERABILITY,CRITICAL_VULNERABILITY,MAJOR_VULNERABILITY,MINOR_VULNERABILITY,"+
                                 "INFO_VULNERABILITY,total) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

const string GET_ALL_AREAS="SELECT * FROM pqd_area";

const string GET_PRODUCTS_OF_AREA="SELECT pqd_product_id,pqd_product_name FROM pqd_product WHERE pqd_area_id=?";

const string GET_ALL_OF_SONAR_ISSUES= "SELECT * FROM sonar_issues_table WHERE project_key=? and snapshot_id=?";

const string GET_COMPONENT_OF_AREA="SELECT pqd_component_id,pqd_component_name,pqd_product_id,sonar_project_key FROM pqd_component" +
                                   " WHERE pqd_area_id=?";

const string GET_COMPONENT_OF_PRODUCT="SELECT pqd_component_id,pqd_component_name,pqd_product_id,sonar_project_key FROM pqd_component" +
                                      " WHERE pqd_product_id=?";

const string GET_DETAILS_OF_COMPONENT = "SELECT pqd_component_id,pqd_component_name,pqd_product_id,sonar_project_key FROM pqd_component " +
                                        "WHERE pqd_component_id=?";

const string GET_MONTHLY_HISTORY = "SELECT year(date) as year ,month(date) as month,project_key,AVG(BLOCKER_BUG) as BLOCKER_BUG," +
                                   "AVG(CRITICAL_BUG) as CRITICAL_BUG,AVG(MAJOR_BUG) as MAJOR_BUG,AVG(MINOR_BUG) as MINOR_BUG, " +
                                   "AVG(INFO_BUG) as INFO_BUG,AVG(BLOCKER_CODE_SMELL) as BLOCKER_CODE_SMELL," +
                                   "AVG(CRITICAL_CODE_SMELL) as CRITICAL_CODE_SMELL,AVG(MAJOR_CODE_SMELL) as MAJOR_CODE_SMELL," +
                                   "AVG(MINOR_CODE_SMELL) as MINOR_CODE_SMELL, AVG(INFO_CODE_SMELL) as INFO_CODE_SMELL," +
                                   "AVG(BLOCKER_VULNERABILITY) as BLOCKER_VULNERABILITY,AVG(CRITICAL_VULNERABILITY) as CRITICAL_VULNERABILITY," +
                                   "AVG(MAJOR_VULNERABILITY) as MAJOR_VULNERABILITY, AVG(MINOR_VULNERABILITY) as MINOR_VULNERABILITY, " +
                                   "AVG(INFO_VULNERABILITY) as INFO_VULNERABILITY,AVG(total) as total " +
                                   "FROM sonar_issues_table where project_key=? and date between ? and ? group by year, month, project_key";

const string GET_QUARTERLY_HISTORY="SELECT year(date) as year ,quarter(date) as quarter,project_key,AVG(BLOCKER_BUG) as BLOCKER_BUG," +
                                   "AVG(CRITICAL_BUG) as CRITICAL_BUG,AVG(MAJOR_BUG) as MAJOR_BUG,AVG(MINOR_BUG) as MINOR_BUG, " +
                                   "AVG(INFO_BUG) as INFO_BUG,AVG(BLOCKER_CODE_SMELL) as BLOCKER_CODE_SMELL," +
                                   "AVG(CRITICAL_CODE_SMELL) as CRITICAL_CODE_SMELL,AVG(MAJOR_CODE_SMELL) as MAJOR_CODE_SMELL," +
                                   "AVG(MINOR_CODE_SMELL) as MINOR_CODE_SMELL, AVG(INFO_CODE_SMELL) as INFO_CODE_SMELL," +
                                   "AVG(BLOCKER_VULNERABILITY) as BLOCKER_VULNERABILITY,AVG(CRITICAL_VULNERABILITY) as CRITICAL_VULNERABILITY," +
                                   "AVG(MAJOR_VULNERABILITY) as MAJOR_VULNERABILITY,AVG(MINOR_VULNERABILITY) as MINOR_VULNERABILITY," +
                                   "AVG(INFO_VULNERABILITY) as INFO_VULNERABILITY,AVG(total) as total " +
                                   "FROM sonar_issues_table where project_key=? and date between ? and ? group by year, quarter, project_key";

const string GET_YEARLY_HISTORY = "SELECT year(date) as year, project_key,AVG(BLOCKER_BUG) as BLOCKER_BUG," +
                                  "AVG(CRITICAL_BUG) as CRITICAL_BUG,AVG(MAJOR_BUG) as MAJOR_BUG,AVG(MINOR_BUG) as MINOR_BUG," +
                                  "AVG(INFO_BUG) as INFO_BUG,AVG(BLOCKER_CODE_SMELL) as BLOCKER_CODE_SMELL," +
                                  "AVG(CRITICAL_CODE_SMELL) as CRITICAL_CODE_SMELL,AVG(MAJOR_CODE_SMELL) as MAJOR_CODE_SMELL," +
                                  "AVG(MINOR_CODE_SMELL) as MINOR_CODE_SMELL, AVG(INFO_CODE_SMELL) as INFO_CODE_SMELL," +
                                  "AVG(BLOCKER_VULNERABILITY) as BLOCKER_VULNERABILITY,AVG(CRITICAL_VULNERABILITY) as CRITICAL_VULNERABILITY," +
                                  "AVG(MAJOR_VULNERABILITY) as MAJOR_VULNERABILITY,AVG(MINOR_VULNERABILITY) as MINOR_VULNERABILITY, " +
                                  "AVG(INFO_VULNERABILITY) as INFO_VULNERABILITY,AVG(total) as total " +
                                  "FROM sonar_issues_table where project_key=? and date between ? and ? group by year, project_key";

const string GET_DAILY_HISTORY_FOR_ALL_AREA = "SELECT date,SUM(BLOCKER_BUG) as BLOCKER_BUG,SUM(CRITICAL_BUG) as CRITICAL_BUG," +
                                       "SUM(MAJOR_BUG) as MAJOR_BUG,SUM(MINOR_BUG) as MINOR_BUG, SUM(INFO_BUG) as INFO_BUG," +
                                       "SUM(BLOCKER_CODE_SMELL) as BLOCKER_CODE_SMELL,SUM(CRITICAL_CODE_SMELL) as CRITICAL_CODE_SMELL," +
                                       "SUM(MAJOR_CODE_SMELL) as MAJOR_CODE_SMELL,SUM(MINOR_CODE_SMELL) as MINOR_CODE_SMELL," +
                                       "SUM(INFO_CODE_SMELL) as INFO_CODE_SMELL,SUM(BLOCKER_VULNERABILITY) as BLOCKER_VULNERABILITY," +
                                       "SUM(CRITICAL_VULNERABILITY) as CRITICAL_VULNERABILITY," +
                                       "SUM(MAJOR_VULNERABILITY) as MAJOR_VULNERABILITY,SUM(MINOR_VULNERABILITY) as MINOR_VULNERABILITY," +
                                       "SUM(INFO_VULNERABILITY) as INFO_VULNERABILITY,SUM(total) as total " +
                                       "FROM sonar_issues_table as a INNER JOIN pqd_component as b " +
                                       "ON a.project_key=b.sonar_project_key where date between ? and ? group by date";

const string GET_MONTHLY_HISTORY_FOR_ALL_AREA="SELECT year(date) as year,month(date) as month,AVG(BLOCKER_BUG) as BLOCKER_BUG," +
                                              "AVG(CRITICAL_BUG) as CRITICAL_BUG,AVG(MAJOR_BUG) as MAJOR_BUG,AVG(MINOR_BUG) as MINOR_BUG," +
                                              "AVG(INFO_BUG) as INFO_BUG,AVG(BLOCKER_CODE_SMELL) as BLOCKER_CODE_SMELL," +
                                              "AVG(CRITICAL_CODE_SMELL) as CRITICAL_CODE_SMELL,AVG(MAJOR_CODE_SMELL) as MAJOR_CODE_SMELL," +
                                              "AVG(MINOR_CODE_SMELL) as MINOR_CODE_SMELL, AVG(INFO_CODE_SMELL) as INFO_CODE_SMELL," +
                                              "AVG(BLOCKER_VULNERABILITY) as BLOCKER_VULNERABILITY," +
                                              "AVG(CRITICAL_VULNERABILITY) as CRITICAL_VULNERABILITY," +
                                              "AVG(MAJOR_VULNERABILITY) as MAJOR_VULNERABILITY," +
                                              "AVG(MINOR_VULNERABILITY) as MINOR_VULNERABILITY, " +
                                              "AVG(INFO_VULNERABILITY) as INFO_VULNERABILITY,AVG(total) as total " +
                                              "FROM(SELECT date,SUM(BLOCKER_BUG) as BLOCKER_BUG,SUM(CRITICAL_BUG) as CRITICAL_BUG," +
                                              "SUM(MAJOR_BUG) as MAJOR_BUG,SUM(MINOR_BUG) as MINOR_BUG, SUM(INFO_BUG) as INFO_BUG," +
                                              "SUM(BLOCKER_CODE_SMELL) as BLOCKER_CODE_SMELL,SUM(CRITICAL_CODE_SMELL) as CRITICAL_CODE_SMELL," +
                                              "SUM(MAJOR_CODE_SMELL) as MAJOR_CODE_SMELL,SUM(MINOR_CODE_SMELL) as MINOR_CODE_SMELL, SUM(INFO_CODE_SMELL) as INFO_CODE_SMELL," +
                                              "SUM(BLOCKER_VULNERABILITY) as BLOCKER_VULNERABILITY,SUM(CRITICAL_VULNERABILITY) as CRITICAL_VULNERABILITY," +
                                              "SUM(MAJOR_VULNERABILITY) as MAJOR_VULNERABILITY,SUM(MINOR_VULNERABILITY) as MINOR_VULNERABILITY," +
                                              " SUM(INFO_VULNERABILITY) as INFO_VULNERABILITY,SUM(total) as total FROM sonar_issues_table as a INNER JOIN pqd_component as b " +
                                              "ON a.project_key=b.sonar_project_key where date between ? and ? group by date)AS T group by year,month";

const string GET_QUARTERLY_HISTORY_FOR_ALL_AREA="SELECT year(date) as year,quarter(date) as quarter,AVG(BLOCKER_BUG) as BLOCKER_BUG," +
                                              "AVG(CRITICAL_BUG) as CRITICAL_BUG,AVG(MAJOR_BUG) as MAJOR_BUG,AVG(MINOR_BUG) as MINOR_BUG," +
                                              "AVG(INFO_BUG) as INFO_BUG,AVG(BLOCKER_CODE_SMELL) as BLOCKER_CODE_SMELL," +
                                              "AVG(CRITICAL_CODE_SMELL) as CRITICAL_CODE_SMELL,AVG(MAJOR_CODE_SMELL) as MAJOR_CODE_SMELL," +
                                              "AVG(MINOR_CODE_SMELL) as MINOR_CODE_SMELL, AVG(INFO_CODE_SMELL) as INFO_CODE_SMELL," +
                                              "AVG(BLOCKER_VULNERABILITY) as BLOCKER_VULNERABILITY," +
                                              "AVG(CRITICAL_VULNERABILITY) as CRITICAL_VULNERABILITY," +
                                              "AVG(MAJOR_VULNERABILITY) as MAJOR_VULNERABILITY," +
                                              "AVG(MINOR_VULNERABILITY) as MINOR_VULNERABILITY, " +
                                              "AVG(INFO_VULNERABILITY) as INFO_VULNERABILITY,AVG(total) as total " +
                                              "FROM(SELECT date,SUM(BLOCKER_BUG) as BLOCKER_BUG,SUM(CRITICAL_BUG) as CRITICAL_BUG," +
                                              "SUM(MAJOR_BUG) as MAJOR_BUG,SUM(MINOR_BUG) as MINOR_BUG, SUM(INFO_BUG) as INFO_BUG," +
                                              "SUM(BLOCKER_CODE_SMELL) as BLOCKER_CODE_SMELL,SUM(CRITICAL_CODE_SMELL) as CRITICAL_CODE_SMELL," +
                                              "SUM(MAJOR_CODE_SMELL) as MAJOR_CODE_SMELL,SUM(MINOR_CODE_SMELL) as MINOR_CODE_SMELL, SUM(INFO_CODE_SMELL) as INFO_CODE_SMELL," +
                                              "SUM(BLOCKER_VULNERABILITY) as BLOCKER_VULNERABILITY,SUM(CRITICAL_VULNERABILITY) as CRITICAL_VULNERABILITY," +
                                              "SUM(MAJOR_VULNERABILITY) as MAJOR_VULNERABILITY,SUM(MINOR_VULNERABILITY) as MINOR_VULNERABILITY," +
                                              " SUM(INFO_VULNERABILITY) as INFO_VULNERABILITY,SUM(total) as total FROM sonar_issues_table as a INNER JOIN pqd_component as b " +
                                              "ON a.project_key=b.sonar_project_key where date between ? and ? group by date)AS T group by year,quarter";

const string GET_YEARLY_HISTORY_FOR_ALL_AREA="SELECT year(date) as year,AVG(BLOCKER_BUG) as BLOCKER_BUG,AVG(CRITICAL_BUG) as CRITICAL_BUG," +
                                             "AVG(MAJOR_BUG) as MAJOR_BUG,AVG(MINOR_BUG) as MINOR_BUG,AVG(INFO_BUG) as INFO_BUG," +
                                             "AVG(BLOCKER_CODE_SMELL) as BLOCKER_CODE_SMELL,AVG(CRITICAL_CODE_SMELL) as CRITICAL_CODE_SMELL," +
                                             "AVG(MAJOR_CODE_SMELL) as MAJOR_CODE_SMELL,AVG(MINOR_CODE_SMELL) as MINOR_CODE_SMELL," +
                                             "AVG(INFO_CODE_SMELL) as INFO_CODE_SMELL,AVG(BLOCKER_VULNERABILITY) as BLOCKER_VULNERABILITY," +
                                             "AVG(CRITICAL_VULNERABILITY) as CRITICAL_VULNERABILITY," +
                                             "AVG(MAJOR_VULNERABILITY) as MAJOR_VULNERABILITY," +
                                             "AVG(MINOR_VULNERABILITY) as MINOR_VULNERABILITY, " +
                                             "AVG(INFO_VULNERABILITY) as INFO_VULNERABILITY,AVG(total) as total " +
                                             "FROM(SELECT date,SUM(BLOCKER_BUG) as BLOCKER_BUG,SUM(CRITICAL_BUG) as CRITICAL_BUG," +
                                             "SUM(MAJOR_BUG) as MAJOR_BUG,SUM(MINOR_BUG) as MINOR_BUG, SUM(INFO_BUG) as INFO_BUG," +
                                             "SUM(BLOCKER_CODE_SMELL) as BLOCKER_CODE_SMELL,SUM(CRITICAL_CODE_SMELL) as CRITICAL_CODE_SMELL," +
                                             "SUM(MAJOR_CODE_SMELL) as MAJOR_CODE_SMELL,SUM(MINOR_CODE_SMELL) as MINOR_CODE_SMELL, SUM(INFO_CODE_SMELL) as INFO_CODE_SMELL," +
                                             "SUM(BLOCKER_VULNERABILITY) as BLOCKER_VULNERABILITY,SUM(CRITICAL_VULNERABILITY) as CRITICAL_VULNERABILITY," +
                                             "SUM(MAJOR_VULNERABILITY) as MAJOR_VULNERABILITY,SUM(MINOR_VULNERABILITY) as MINOR_VULNERABILITY," +
                                             " SUM(INFO_VULNERABILITY) as INFO_VULNERABILITY,SUM(total) as total FROM sonar_issues_table as a INNER JOIN pqd_component as b " +
                                             "ON a.project_key=b.sonar_project_key where date between ? and ? group by date)AS T group by year";