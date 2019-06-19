package com.org.app.pagination;

public enum OrderBy {
ID("id"), CREATEDDATE("createdDate");
private String OrderByCode;
private OrderBy(String orderBy) {
this.OrderByCode = orderBy;
}
public String getOrderByCode() {
return this.OrderByCode;
}
}