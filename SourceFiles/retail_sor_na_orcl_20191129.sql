/*
 * Project :      retail_sor_na_Oracle
 *
 * Date Modified: 2019-11-19
 * Target DBMS : Oracle 11g
*  Rick Sherman
 */


CREATE TABLE DimAccount(
    AccountKey            number(10)              NOT NULL,
    ParentAccountKey      number(10)              NULL,
    AccountLabel          nvarchar2(100)    NULL,
    AccountName           nvarchar2(50)     NULL,
    AccountDescription    nvarchar2(50)     NULL,
    AccountType           nvarchar2(50)     NULL,
    Operator              nvarchar2(50)     NULL,
    ETLLoadID             number(10)              NULL,
    LoadDate              timestamp(3)         NULL,
    UpdateDate            timestamp(3)         NULL,
    PRIMARY KEY (AccountKey)
);



CREATE TABLE DimCustomer_Company(
    CustomerID      number(10)               NOT NULL,
    CustomerKey     number(10)               NOT NULL,
    YearlyIncome    number(15, 2)    NULL,
    CustomerType    nvarchar2(15)      NULL,
    CompanyName     nvarchar2(100)     NULL,
    GeographyKey    number(10)               NOT NULL,
    ETLLoadID       number(10)               NULL,
    LoadDate        timestamp(3)          NULL,
    UpdateDate      timestamp(3)          NULL,
    PRIMARY KEY  (CustomerID)
);



CREATE TABLE DimCustomer_Person(
    CustomerID              number(10)            NOT NULL, ---   IDENTITY(1001,1),
    CustomerKey             number(10)               NOT NULL,
    Title                   nvarchar2(8)       NULL,
    FirstName               nvarchar2(50)      NULL,
    MiddleName              nvarchar2(50)      NULL,
    LastName                nvarchar2(50)      NULL,
    BirthDate               date              NULL,
    MaritalStatus           nchar(1)          NULL,
    Suffix                  nvarchar2(10)      NULL,
    Gender                  nvarchar2(1)       NULL,
    EmailAddress            nvarchar2(50)      NULL,
    YearlyIncome            number(15, 2)    NULL,
    TotalChildren           number(10)               NULL,
    NumberChildrenAtHome    number(10)               NULL,
    Education               nvarchar2(40)      NULL,
    Occupation              nvarchar2(100)     NULL,
    HouseOwnerFlag          nchar(1)          NULL,
    NumberCarsOwned         number(10)               NULL,
    AddressLine1            nvarchar2(120)     NULL,
    AddressLine2            nvarchar2(120)     NULL,
    Phone                   nvarchar2(20)      NULL,
    DateFirstPurchase       date              NULL,
    GeographyKey            number(10)               NOT NULL,
    ETLLoadID               number(10)               NULL,
    LoadDate                timestamp(3)          NULL,
    UpdateDate              timestamp(3)          NULL,
    PRIMARY KEY  (CustomerID)
);



CREATE TABLE DimDate(
    DateSK                number(10)            NOT NULL,
    FullDateAK            date           NULL,
    FullDateTimeAK        timestamp(3)       NULL,
    YearID                number(10)            NULL,
    MonthID               number(10)            NULL,
    DayID                 number(10)            NULL,
    YearQtr               number(10)            NULL,
    YearMonth             number(10)            NULL,
    DayOfYear             number(10)            NULL,
    WeekOfYear            number(10)            NULL,
    DayofWeek             number(10)            NULL,
    MonthAbr              char(3)        NULL,
    DayAbr                char(3)        NULL,
    MonthFull             varchar2(12)    NULL,
    DayFull               varchar2(12)    NULL,
    FullDateUSA           char(10)       NULL,
    DayOfMonth            varchar2(2)     NULL,
    DaySuffix             varchar2(4)     NULL,
    DayName               varchar2(9)     NULL,
    DayOfWeekUSA          char(1)        NULL,
    DayOfWeekInMonth      varchar2(2)     NULL,
    DayOfWeekInYear       varchar2(2)     NULL,
    DayOfQuarter          varchar2(3)     NULL,
    DayOfYearChar         varchar2(3)     NULL,
    WeekOfMonth           varchar2(1)     NULL,
    WeekOfQuarter         varchar2(2)     NULL,
    WeekOfYearChar        varchar2(2)     NULL,
    MonthChar             varchar2(2)     NULL,
    MonthName             varchar2(9)     NULL,
    MonthOfQuarter        varchar2(2)     NULL,
    Quarter               char(1)        NULL,
    QuarterName           varchar2(9)     NULL,
    YearChar              char(4)        NULL,
    YearName              char(7)        NULL,
    MonthYear             char(10)       NULL,
    MMYYYY                char(6)        NULL,
    FirstDayOfMonth       date           NULL,
    LastDayOfMonth        date           NULL,
    FirstDayOfQuarter     date           NULL,
    LastDayOfQuarter      date           NULL,
    FirstDayOfYear        date           NULL,
    LastDayOfYear         date           NULL,
    IsWeekday             number(1)            NULL,
    IsHolidayUSA          number(1)            NULL,
    HolidayUSA            varchar2(50)    NULL,
    EuropeSeason          varchar2(50)    NULL,
    NorthAmericaSeason    varchar2(50)    NULL,
    AsiaSeason            varchar2(50)    NULL,
    ETLLoadID             number(10)            NULL,
    LoadDate              timestamp(3)       NULL,
    UpdateDate            timestamp(3)       NULL,
    PRIMARY KEY  (DateSK)
);



CREATE TABLE DimEntity(
    EntityKey            number(10)              NOT NULL,
    EntityLabel          nvarchar2(100)    NULL,
    ParentEntityKey      number(10)              NULL,
    ParentEntityLabel    nvarchar2(100)    NULL,
    EntityName           nvarchar2(50)     NULL,
    EntityDescription    nvarchar2(100)    NULL,
    EntityType           nvarchar2(100)    NULL,
    StartDate            timestamp(3)         NULL,
    EndDate              timestamp(3)         NULL,
    Status               nvarchar2(50)     NULL,
    ETLLoadID            number(10)              NULL,
    LoadDate             timestamp(3)         NULL,
    UpdateDate           timestamp(3)         NULL,
    PRIMARY KEY  (EntityKey)
);



CREATE TABLE DimGeography(
    GeographyKey         number(10)                NOT NULL,
    GeographyType        nvarchar2(50)       NOT NULL,
    ContinentName        nvarchar2(50)       NOT NULL,
    ContinentCode        nchar(2)           NULL,
    Country              nvarchar2(100)      NULL,
    Country_name         nvarchar2(100)      NULL,
    RegionCountryName    nvarchar2(100)      NULL,
    ISO_3166_numeric     number(10)                NULL,
    ISO_3166_alpha_2     nchar(2)           NULL,
    ISO_3166_alpha_3     nchar(3)           NULL,
    Region               nvarchar2(100)      NULL,
    Subdiv_name          nvarchar2(100)      NOT NULL,
    ISO_3166_2_subdiv    varchar2(10)        NOT NULL,
    Subdiv_code          nvarchar2(10)       NOT NULL,
    StateProvinceName    nvarchar2(100)      NULL,
    StateProvinceCode    nvarchar2(3)        NULL,
    City                 nvarchar2(100)      NULL,
    CityName             nvarchar2(100)      NULL,
    Latitude             number(28, 10)    NULL,
    Longitude            number(28, 10)    NULL,
    ETLLoadID            number(10)                NULL,
    LoadDate             timestamp(3)           NULL,
    UpdateDate           timestamp(3)           NULL,
    PRIMARY KEY  (GeographyKey)
);



CREATE TABLE DimProduct(
    ProductLabel               nvarchar2(24)     NOT NULL,
    ProductName                nvarchar2(500)    NULL,
    ProductDescription         nvarchar2(400)    NULL,
    ProductSubcategoryLabel    nvarchar2(100)    NULL,
    Manufacturer               nvarchar2(50)     NULL,
    BrandName                  nvarchar2(50)     NULL,
    ClassID                    nvarchar2(10)     NULL,
    ClassName                  nvarchar2(20)     NULL,
    StyleID                    nvarchar2(10)     NULL,
    StyleName                  nvarchar2(20)     NULL,
    ColorID                    nvarchar2(10)     NULL,
    ColorName                  nvarchar2(20)     NULL,
    ProductSize                       nvarchar2(50)     NULL,
    SizeRange                  nvarchar2(50)     NULL,
    SizeUnitMeasureID          nvarchar2(20)     NULL,
    Weight                      number(15, 2)    NULL,
    WeightUnitMeasureID        nvarchar2(20)     NULL,
    UnitOfMeasureID            nvarchar2(10)     NULL,
    UnitOfMeasureName          nvarchar2(40)     NULL,
    StockTypeID                nvarchar2(10)     NULL,
    StockTypeName              nvarchar2(40)     NULL,
    AvailableForSaleDate       date             NULL,
    StopSaleDate               date             NULL,
    Status                     nvarchar2(7)      NULL,
    ETLLoadID                  number(10)              NULL,
    LoadDate                   timestamp(3)         NULL,
    UpdateDate                 timestamp(3)         NULL,
    PRIMARY KEY  (ProductLabel)
);



CREATE TABLE DimProductCategory(
    ProductCategoryLabel          nvarchar2(100)    NOT NULL,
    ProductCategoryName           nvarchar2(30)     NOT NULL,
    ProductCategoryDescription    nvarchar2(50)     NOT NULL,
    ETLLoadID                     number(10)              NULL,
    LoadDate                      timestamp(3)         NULL,
    UpdateDate                    timestamp(3)         NULL,
    PRIMARY KEY  (ProductCategoryLabel)
);



CREATE TABLE DimProductSubcategory(
    ProductSubcategoryLabel          nvarchar2(100)    NOT NULL,
    ProductSubcategoryName           nvarchar2(50)     NOT NULL,
    ProductSubcategoryDescription    nvarchar2(100)    NULL,
    ProductCategoryLabel             nvarchar2(100)    NOT NULL,
    ETLLoadID                        number(10)              NULL,
    LoadDate                         timestamp(3)         NULL,
    UpdateDate                       timestamp(3)         NULL,
    PRIMARY KEY  (ProductSubcategoryLabel)
);



CREATE TABLE DimPromotion(
    PromotionID             number(10)              NOT NULL,
    PromotionLabel          nvarchar2(12)     NOT NULL,
    PromotionName           nvarchar2(100)    NULL,
    PromotionDescription    nvarchar2(255)    NULL,
    DiscountPercent         binary_double            NULL,
    PromotionType           nvarchar2(50)     NULL,
    PromotionCategory       nvarchar2(50)     NULL,
    StartDate               date             NOT NULL,
    EndDate                 date             NULL,
    MinQuantity             number(10)              NULL,
    MaxQuantity             number(10)              NULL,
    ETLLoadID               number(10)              NULL,
    LoadDate                timestamp(3)         NULL,
    UpdateDate              timestamp(3)         NULL,
    PRIMARY KEY  (PromotionID)
);



CREATE TABLE DimSalesTerritory(
    SalesTerritoryKey        number(10)              NOT NULL,
    GeographyKey             number(10)              NOT NULL,
    SalesTerritoryLabel      nvarchar2(100)    NULL,
    SalesTerritoryName       nvarchar2(50)     NOT NULL,
    SalesTerritoryRegion     nvarchar2(50)     NOT NULL,
    SalesTerritoryCountry    nvarchar2(50)     NOT NULL,
    SalesTerritoryGroup      nvarchar2(50)     NULL,
    SalesTerritoryLevel      nvarchar2(10)     NULL,
    SalesTerritoryManager    number(10)              NULL,
    StartDate                date             NULL,
    EndDate                  date             NULL,
    Status                   nvarchar2(50)     NULL,
    ETLLoadID                number(10)              NULL,
    LoadDate                 timestamp(3)         NULL,
    UpdateDate               timestamp(3)         NULL,
    PRIMARY KEY  (SalesTerritoryKey)
);



CREATE TABLE DimStore(
    StoreID             number(10)              NOT NULL,
    StoreKey            number(10)              NOT NULL,
    StoreManager        number(10)              NULL,
    StoreType           nvarchar2(15)     NULL,
    StoreName           nvarchar2(100)    NOT NULL,
    StoreDescription    nvarchar2(300)    NOT NULL,
    Status              nvarchar2(20)     NOT NULL,
    OpenDate            date             NOT NULL,
    CloseDate           date             NULL,
    EntityKey           number(10)              NULL,
    ZipCode             nvarchar2(20)     NULL,
    ZipCodeExtension    nvarchar2(10)     NULL,
    StorePhone          nvarchar2(15)     NULL,
    StoreFax            nvarchar2(14)     NULL,
    AddressLine1        nvarchar2(100)    NULL,
    AddressLine2        nvarchar2(100)    NULL,
    CloseReason         nvarchar2(20)     NULL,
    EmployeeCount       number(10)              NULL,
    SellingAreaSize     binary_double            NULL,
    LastRemodelDate     date             NULL,
    GeographyKey        number(10)              NOT NULL,
    ETLLoadID           number(10)              NULL,
    LoadDate            timestamp(3)         NULL,
    UpdateDate          timestamp(3)         NULL,
    PRIMARY KEY  (StoreID)
);



CREATE TABLE FactInventory(
    InventoryID            number(10)             NOT NULL,
    InventoryDate          timestamp(3)        NOT NULL,
    StoreID                number(10)             NOT NULL,
    ProductLabel           nvarchar2(24)    NULL,
    GeographyKey           number(10)             NULL,
    OnHandQuantity         number(10)             NOT NULL,
    OnOrderQuantity        number(10)             NOT NULL,
    SafetyStockQuantity    number(10)             NULL,
    DaysInStock            number(10)             NULL,
    MinDayInStock          number(10)             NULL,
    MaxDayInStock          number(10)             NULL,
    Aging                  number(10)             NULL,
    ETLLoadID              number(10)             NULL,
    LoadDate               timestamp(3)        NULL,
    UpdateDate             timestamp(3)        NULL,
    PRIMARY KEY  (InventoryID)
);



CREATE TABLE FactOnlineSalesOrderDetail(
    SalesDetailID           number(10)               NOT NULL,
    SalesDate               timestamp(3)          NOT NULL,
    PromotionID             number(10)               NULL,
    ProductLabel            nvarchar2(24)      NULL,
    SalesHeaderID           number(10)               NULL,
    SalesOrderNumber        nvarchar2(20)      NULL,
    SalesOrderLineNumber    number(10)               NULL,
    SalesQuantity           number(10)               NOT NULL,
    ReturnQuantity          number(10)               NULL,
    SalesAmount             number(15, 2)    NOT NULL,
    ReturnAmount            number(15, 2)    NULL,
    DiscountAmount          number(15, 2)    NULL,
    DiscountPct             number(10, 4)    NULL,
    TotalCost               number(15, 2)    NULL,
    ETLLoadID               number(10)               NULL,
    LoadDate                timestamp(3)          NULL,
    UpdateDate              timestamp(3)          NULL,
    PRIMARY KEY  (SalesDetailID)
);



CREATE TABLE FactOnlineSalesOrderHeader(
    SalesHeaderID       number(10)               NOT NULL,
    SalesDate           timestamp(3)          NOT NULL,
    StoreID             number(10)               NOT NULL,
    CustomerKey         number(10)               NULL,
 --   GeographyKey        int               NULL,
    SalesOrderNumber    nvarchar2(20)      NULL,
 --   SalesAmount         numeric(15, 2)    NULL,
 --   ReturnAmount        numeric(15, 2)    NULL,
 --   DiscountAmount      numeric(15, 2)    NULL,
 --   TotalCost           numeric(15, 2)    NULL,
    ETLLoadID           number(10)               NULL,
    LoadDate            timestamp(3)          NULL,
    UpdateDate          timestamp(3)          NULL,
    DateSK              number(10)               NULL,
    PRIMARY KEY  (SalesHeaderID)
);



CREATE TABLE FactResellerSales(
    SalesID           number(10)               NOT NULL,
    SalesDate         timestamp(3)          NOT NULL,
    StoreID           number(10)               NOT NULL,
    ProductLabel      nvarchar2(24)      NULL,
    PromotionID       number(10)               NULL,
    GeographyKey      number(10)               NULL,
    SalesQuantity     number(10)               NOT NULL,
    ReturnQuantity    number(10)               NOT NULL,
    SalesAmount       number(15, 2)    NOT NULL,
    ReturnAmount      number(15, 2)    NULL,
    DiscountAmount    number(15, 2)    NULL,
    DiscountPct       number(10, 4)    NULL,
    TotalCost         number(15, 2)    NULL,
    ETLLoadID         number(10)               NULL,
    LoadDate          timestamp(3)          NULL,
    UpdateDate        timestamp(3)          NULL,
    PRIMARY KEY  (SalesID)
);



CREATE TABLE FactStoreSales(
    SalesID           number(10)               NOT NULL,
    SalesDate         timestamp(3)          NOT NULL,
    StoreID           number(10)               NOT NULL,
    ProductLabel      nvarchar2(24)      NULL,
    PromotionID       number(10)               NULL,
    GeographyKey      number(10)               NULL,
    SalesQuantity     number(10)               NOT NULL,
    ReturnQuantity    number(10)               NOT NULL,
    SalesAmount       number(15, 2)    NOT NULL,
    ReturnAmount      number(15, 2)    NULL,
    DiscountAmount    number(15, 2)    NULL,
    DiscountPct       number(10, 4)    NULL,
    TotalCost         number(15, 2)    NULL,
    ETLLoadID         number(10)               NULL,
    LoadDate          timestamp(3)          NULL,
    UpdateDate        timestamp(3)          NULL,
    PRIMARY KEY  (SalesID)
);

/*

CREATE TABLE dbo.FactSalesQuota(
    SalesQuotaSK           int               NOT NULL,
    SalesQuotaKey          int               NOT NULL,
    ChannelKey             int               NOT NULL,
    StoreID                int               NULL,
    ProductLabel           nvarchar(24)      NULL,
    QuotaDate              date              NOT NULL,
    CurrencyKey            int               NOT NULL,
    ContinentCode          nchar(2)          NULL,
    GeographyKey           int               NULL,
    ScenarioKey            int               NOT NULL,
    SalesQuantityQuota     int               NOT NULL,
    GrossMarginPctQuota    numeric(10, 4)    NOT NULL,
    SalesAmountQuota       numeric(15, 2)    NOT NULL,
    GrossMarginQuota       numeric(15, 2)    NOT NULL,
    ETLLoadID              int               NULL,
    LoadDate               datetime          NULL,
    UpdateDate             datetime          NULL,
    PRIMARY KEY  (SalesQuotaSK)
)
go


CREATE TABLE dbo.FactStrategyPlan(
    StrategyPlanSK        int               NOT NULL,
    StrategyPlanKey       int               NOT NULL,
    PlanDate              date              NOT NULL,
    EntityKey             int               NOT NULL,
    ScenarioKey           int               NOT NULL,
    AccountKey            int               NOT NULL,
    CurrencyKey           int               NOT NULL,
    ProductCategoryKey    int               NULL,
    PlanAmount            numeric(15, 2)    NOT NULL,
    StoreKey              int               NULL,
    GeographyKey          int               NULL,
    ETLLoadID             int               NULL,
    LoadDate              datetime          NULL,
    UpdateDate            datetime          NULL,
    PRIMARY KEY (StrategyPlanSK)
)
go

*/

--drop view DimCustomer_vw;

Create view DimCustomer_vw
as
SELECT CustomerID,
       CustomerKey,
       --CustomerLabel,
       CustomerType,
       CompanyName,
       GeographyKey
FROM DimCustomer_Company
union
SELECT CustomerID,
       CustomerKey,
     --  CustomerLabel,
       'Person' as CustomerType,
       case when MiddleName is not null then LastName||',  '||FirstName||'  '||MiddleName
        else LastName||',  '||FirstName
        end as CustomerName,
       GeographyKey
FROM DimCustomer_Person
;
go


