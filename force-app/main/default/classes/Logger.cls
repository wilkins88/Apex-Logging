/**
 * @File Name          : Logger.cls
 * @Description        : 
 * @Author             : Thomas Wilkins
 * @Group              : 
 * @Last Modified By   : Thomas Wilkins
 * @Last Modified On   : 3/4/2020, 2:57:16 PM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    3/4/2020   Thomas Wilkins     Initial Version
**/
public inherited sharing class Logger {
    private IDebugLogger dLogger;
    private IErrorLogger eLogger;
    private IInfoLogger iLogger;
    private IWarningLogger wLogger;

    public Logger(
        IDebugLogger dLogger,
        IErrorLogger eLogger,
        IInfoLogger iLogger,
        IWarningLogger wLogger
    ) {
        this.dLogger = dLogger;
        this.eLogger = eLogger;
        this.iLogger = iLogger;
        this.wLogger = wLogger;
    }

    public void debug() {
        this.dLogger.debug();
    }

    public void error() {
        this.eLogger.error();
    }

    public void info() {
        this.iLogger.info();
    }

    public void warn() {
        this.wLogger.warn();
    }
}
