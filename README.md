# fn-mule4-api-template
Mule 4 API template that provides an initial setup to start developing Mule applications. 

It contains the following features: 
- pom.xml: 
    - [Logger Extension dependency][1]
    - [Common Error Handling framework dependency][2]
    - [Secure Configuration Property dependency][3]
    - [Sockets Connector dependency][4]
    - [APIKit Module dependency][5]
    - [HTTP Connector dependency][6]
    - Common Utils dependency
- global.xml configuration file which defines:
    - Global property **mule.env** with a default value: **local**. The initial configuration files for the environments: **local**, **development**, **staging**, and **production** 
    - Configuration properties loading from **config/properties/config-${mule.env}.yaml**
    - Import **common-error-flows.xml** (loaded from the Common Error Handling framework dependency)
    - Fiscal Note Logger Mule Extension Config with default values **Application Name: Mule::p('app.name')**, **Application Version: Mule::p('app.version')** and **Environment: Mule::p('mule.env')**
    - API Autodiscovery configuration with values **App Id: ${api.autodiscovery.id}** and **Flow Name: ${api.autodiscovery.flow}**. If you want to set a different values you only need to edit the values in the property files.
    - Http Listener configuration
    - TLS Context with the next values, **Path: ${trustStore.path}**, **Password: ${secure::trustStore.password}** and **Type: ${trustStore.type}**. If you want to set a different values you only need to edit the values in the property files. 
    - Secure Properties Config, loading from **config/properties/config-secured-${mule.env}.yaml** and it use the **${mule.key}** argument to decrypt information
    
# How to use
    
  _Prerequisite: authentication should be set in Preferences -> Anypoint Studio -> Authentication_
    
  - In Anypoint Studio, go to File -> New -> Project from Template 
  - Click on the component **Mule 4 API Template**
  ![Mule 4 API Template](/resource/ScreenShot-1.png?raw=true)
  
  - Click on the button **Open**
  ![Open](/resource/ScreenShot-2.png?raw=true)
  
  - Once the application is created from the template, rename the project as needed.
  - Open the **pom.xml** file and make the following changes:
    - **groupId** to **com.mycompany** 
    - **artifactId** with a meaningful name.
    - **name** with a meaningful name
    ![pom.xml](/resource/ScreenShot-3.png?raw=true)
  
  - Go to src/main/resources/config and open the different configuration files to make the following changes:
  ```
  api:
    autodiscovery:
      id: <API ID from API Manager>
      flow: <API's main flow name>
  ```
  - [Import the API RAML spec from Anypoint Studio][7]. This will use APIkit for generating the implementation flows. 
  - Delete the **my-spec.xml** file in the **src/main/mule/spec** and move the generate (name-of-api.xml) file to this path:
  - Open the file generated in the last step (name-of-api.xml) and make the following changes:
    - Look for the **http:listener-config** component and modify the attributes of the **http:listener-connection**: _host_ = **${http.name}** / _port_ = **${http.private.port}**
    - Look for the API's main flow and modify the attribute _path_ of the **http:listener** component to **${api.path}**
    - Look for the error-handler configuration inside the API's main flow and reference to the **global-error-handler-apikit**
  ![name-of-api.xml](/resource/ScreenShot-4.png?raw=true)
  
  - Develop actual flow implementations, replacing the auto-generated ones.
  _Recomend to create a new **Mule Configuration File** inside the **src/main/mule/impl** and create your implementation flows in it. you can reference them with the **Flow Reference**.
  
  # How to deploy through GitHub Action
  Modify the **mule-ci.xml** file in **.github -> workflows** folder and commit the code in the develop branch.
  ![mule-ci.xml](/resource/ScreenShot-5.png?raw=true)
  
  [1]: (https://anypoint.mulesoft.com/exchange/55278f41-739f-4cde-8b2e-6aa3592eb7a5/logger-mule-extension/)
  [2]: (https://anypoint.mulesoft.com/exchange/55278f41-739f-4cde-8b2e-6aa3592eb7a5/common-error-flows/)
  [3]: (https://anypoint.mulesoft.com/exchange/com.mulesoft.modules/mule-secure-configuration-property-module/)
  [4]: (https://anypoint.mulesoft.com/exchange/org.mule.connectors/mule-sockets-connector/)
  [5]: (https://anypoint.mulesoft.com/exchange/org.mule.modules/mule-apikit-module/)
  [6]: (https://anypoint.mulesoft.com/exchange/org.mule.connectors/mule-http-connector/)
  [7]: (https://docs.mulesoft.com/studio/7.3/import-api-def-dc)
  
