package org.jboss.xavier.integrations.migrationanalytics.output;

@javax.persistence.Entity
public class ReportDataModel implements java.io.Serializable {

    static final long serialVersionUID = 1L;

    @javax.persistence.GeneratedValue(strategy = javax.persistence.GenerationType.AUTO, generator = "INPUTDATAMODEL_ID_GENERATOR")
    @javax.persistence.Id
    @javax.persistence.SequenceGenerator(sequenceName = "INPUTDATAMODEL_ID_SEQ", name = "INPUTDATAMODEL_ID_GENERATOR")
    private Long id;

    @org.kie.api.definition.type.Label("Customer ID")
    private String customerId;

    @org.kie.api.definition.type.Label("Source payload file name")
    private String fileName;

    @org.kie.api.definition.type.Label("Number of hosts found")
    private Integer numberOfHosts;

    @org.kie.api.definition.type.Label("Total disk space used found ")
    private Long totalDiskSpace;

    @org.kie.api.definition.type.Label("Total price for subscriptions once migrated")
    private Integer totalPrice;

    @org.kie.api.definition.type.Label(value = "Date of creation")
    private java.util.Date creationDate;

    public ReportDataModel() {
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCustomerId() {
        return this.customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Integer getNumberOfHosts() {
        return this.numberOfHosts;
    }

    public void setNumberOfHosts(Integer numberOfHosts) {
        this.numberOfHosts = numberOfHosts;
    }

    public Long getTotalDiskSpace() {
        return this.totalDiskSpace;
    }

    public void setTotalDiskSpace(Long totalDiskSpace) {
        this.totalDiskSpace = totalDiskSpace;
    }

    public Integer getTotalPrice() {
        return this.totalPrice;
    }

    public void setTotalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
    }

    public java.util.Date getCreationDate() {
        return this.creationDate;
    }

    public void setCreationDate(java.util.Date creationDate) {
        this.creationDate = creationDate;
    }

    public ReportDataModel(Long id, String customerId,
                           String fileName, Integer numberOfHosts,
                           Long totalDiskSpace, Integer totalPrice,
                           java.util.Date creationDate) {
        this.id = id;
        this.customerId = customerId;
        this.fileName = fileName;
        this.numberOfHosts = numberOfHosts;
        this.totalDiskSpace = totalDiskSpace;
        this.totalPrice = totalPrice;
        this.creationDate = creationDate;
    }

}
