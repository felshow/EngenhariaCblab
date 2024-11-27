CREATE TABLE taxes (
    taxNum INT PRIMARY KEY,
    guestCheckId BIGINT,
    txblSlsTtl DECIMAL(10, 2),
    taxCollTtl DECIMAL(10, 2),
    taxRate DECIMAL(5, 2),
    type INT,
    FOREIGN KEY (guestCheckId) REFERENCES GuestCheck(guestCheckId)
);

CREATE TABLE menuitem (
    miNum INT PRIMARY KEY,
    guestCheckLineItemId BIGINT,
    modFlag BOOLEAN,
    inclTax DECIMAL(10, 2),
    activeTaxes VARCHAR(50),
    prcLvl INT,
    FOREIGN KEY (guestCheckLineItemId) REFERENCES DetailLine(guestCheckLineItemId)
);

CREATE TABLE guestcheck (
    guestCheckId BIGINT PRIMARY KEY,
    chkNum INT,
    opnBusDt DATE,
    opnUTC DATETIME,
    opnLcl DATETIME,
    clsdBusDt DATE,
    clsdUTC DATETIME,
    clsdLcl DATETIME,
    lastTransUTC DATETIME,
    lastTransLcl DATETIME,
    lastUpdatedUTC DATETIME,
    lastUpdatedLcl DATETIME,
    clsdFlag BOOLEAN,
    gstCnt INT,
    subTtl DECIMAL(10, 2),
    nonTxblSlsTtl DECIMAL(10, 2),
    chkTtl DECIMAL(10, 2),
    dscTtl DECIMAL(10, 2),
    payTtl DECIMAL(10, 2),
    balDueTtl DECIMAL(10, 2),
    rvcNum INT,
    otNum INT,
    ocNum INT,
    tblNum INT,
    tblName VARCHAR(50),
    empNum INT,
    numSrvcRd INT,
    numChkPrntd INT
);

CREATE TABLE detailline (
    guestCheckLineItemId BIGINT PRIMARY KEY,
    guestCheckId BIGINT,
    rvcNum INT,
    dtlOtNum INT,
    dtlOcNum INT,
    lineNum INT,
    dtlId INT,
    detailUTC DATETIME,
    detailLcl DATETIME,
    lastUpdateUTC DATETIME,
    lastUpdateLcl DATETIME,
    busDt DATE,
    wsNum INT,
    dspTtl DECIMAL(10, 2),
    dspQty INT,
    aggTtl DECIMAL(10, 2),
    aggQty INT,
    chkEmpId BIGINT,
    chkEmpNum INT,
    svcRndNum INT,
    seatNum INT,
    FOREIGN KEY (guestCheckId) REFERENCES GuestCheck(guestCheckId)
);

