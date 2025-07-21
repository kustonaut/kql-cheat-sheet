# KQL Visual Examples

This document contains visual examples and diagrams to supplement the main cheat sheet.

## 📊 Query Execution Flow

```mermaid
sequenceDiagram
    participant User
    participant KQL as KQL Engine
    participant Data as Data Store
    
    User->>KQL: Submit Query
    KQL->>KQL: Parse & Validate
    KQL->>Data: Filter & Project
    Data->>KQL: Filtered Results
    KQL->>KQL: Aggregate & Transform
    KQL->>User: Final Results
    
    Note over KQL: Optimization happens here
    Note over Data: Only relevant data retrieved
```

## 🎯 Performance Optimization Visual Guide

### ✅ Optimized Query Pattern
![Good Query Pattern](../assets/images/query-performance.svg)

### 📈 Time Series Analysis Pattern

```mermaid
gantt
    title KQL Time Series Query Performance
    dateFormat  HH:mm
    axisFormat %H:%M
    
    section Data Ingestion
    Data Ingestion    :active, 09:00, 12:00
    
    section Query Execution
    Filter Data       :done, 10:00, 10:15
    Aggregate         :done, 10:15, 10:30
    Transform         :done, 10:30, 10:45
    Render Results    :active, 10:45, 11:00
```

## 🔄 Join Operations Visual

```mermaid
erDiagram
    Table-A ||--o{ Join-Result : "inner join"
    Table-B ||--o{ Join-Result : "inner join"
    
    Table-A {
        string UserId
        datetime Timestamp
        string Action
    }
    
    Table-B {
        string UserId
        string UserName
        string Department
    }
    
    Join-Result {
        string UserId
        datetime Timestamp
        string Action
        string UserName
        string Department
    }
```

## 📱 Real Time Intelligence Dashboard Layout

```mermaid
graph TB
    subgraph "RTI Dashboard"
        A[🚨 Alert Tiles] --> B[📊 Performance Metrics]
        B --> C[📈 Time Series Charts]
        C --> D[🔍 Query Explorer]
        
        E[📱 Application Health] --> B
        F[🖥️ Infrastructure Metrics] --> B
        G[👥 User Analytics] --> B
        
        D --> H[💾 Saved Queries]
        D --> I[🔄 Real-time Results]
    end
    
    style A fill:#ffebee
    style B fill:#e8f5e8
    style C fill:#e3f2fd
    style D fill:#fff3e0
```

## 🎨 Data Type Hierarchy

```mermaid
classDiagram
    class KQLDataTypes {
        +string
        +dynamic
        +datetime
        +timespan
        +int
        +long
        +real
        +decimal
        +bool
        +guid
    }
    
    class StringOperations {
        +contains()
        +startswith()
        +endswith()
        +extract()
        +split()
    }
    
    class NumericOperations {
        +sum()
        +avg()
        +min()
        +max()
        +percentile()
    }
    
    class DateTimeOperations {
        +ago()
        +now()
        +bin()
        +format_datetime()
        +dayofweek()
    }
    
    KQLDataTypes --> StringOperations
    KQLDataTypes --> NumericOperations
    KQLDataTypes --> DateTimeOperations
```

## 🔍 Query Building Workflow

```mermaid
flowchart TD
    Start([Start Building Query]) --> Source[Select Data Source]
    Source --> Filter{Need Filtering?}
    Filter -->|Yes| AddFilter[Add where clause]
    Filter -->|No| Project{Need Specific Columns?}
    AddFilter --> Project
    Project -->|Yes| AddProject[Add project clause]
    Project -->|No| Aggregate{Need Aggregation?}
    AddProject --> Aggregate
    Aggregate -->|Yes| AddSummarize[Add summarize clause]
    Aggregate -->|No| Sort{Need Sorting?}
    AddSummarize --> Sort
    Sort -->|Yes| AddSort[Add sort clause]
    Sort -->|No| Render{Need Visualization?}
    AddSort --> Render
    Render -->|Yes| AddRender[Add render clause]
    Render -->|No| Execute([Execute Query])
    AddRender --> Execute
    
    style Start fill:#e8f5e8
    style Execute fill:#e3f2fd
    style Filter fill:#fff3e0
    style Project fill:#fff3e0
    style Aggregate fill:#fff3e0
    style Sort fill:#fff3e0
    style Render fill:#fff3e0
```

## 📊 Common Query Patterns

### Pattern 1: Time-based Analysis
```
Data Source → Time Filter → Group by Time → Aggregate → Visualize
```

### Pattern 2: Error Analysis
```
Logs → Filter Errors → Parse Details → Count by Type → Alert if Threshold
```

### Pattern 3: Performance Monitoring
```
Metrics → Recent Time Window → Calculate Statistics → Compare Baselines → Dashboard
```

## 🎯 Best Practices Checklist

- ✅ **Filter Early**: Apply `where` clauses as early as possible
- ✅ **Project Wisely**: Only select columns you need
- ✅ **Time Bounds**: Always use time range filters for large datasets
- ✅ **Index Usage**: Leverage indexed columns in filters
- ✅ **Aggregate Smart**: Use appropriate aggregation functions
- ✅ **Cache Results**: Consider materialized views for frequent queries
- ❌ **Avoid**: Full table scans without filters
- ❌ **Avoid**: Complex regex on large datasets
- ❌ **Avoid**: Unnecessary joins
- ❌ **Avoid**: Too many columns in output

---

*These visual examples complement the main KQL cheat sheet. Use them to better understand query patterns and optimization techniques.*
