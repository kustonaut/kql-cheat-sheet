---
layout: default
---

# 🚀 KQL Cheat Sheet for Real Time Intelligence

Welcome to the most comprehensive KQL (Kusto Query Language) cheat sheet designed specifically for **Microsoft Fabric Real Time Intelligence** scenarios.

> **Originally compiled by**: Akshay Dixit (kustonaut)  
> **Enhanced for**: Real Time Intelligence scenarios and community collaboration

## 📖 Quick Access

- **[Complete Cheat Sheet](KQL-Cheat-Sheet.md)** - Full reference with all operators and functions
- **[Download PDF](KQL-Cheat-Sheet.pdf)** - Professional PDF version for offline use
- **[Browse Examples](examples/)** - Practical KQL examples for common scenarios

## 🎯 What You'll Find

### 📚 **Complete Reference Materials**
- **150+ KQL operators** with practical examples
- **Visual diagrams** using Mermaid flowcharts
- **Performance optimization** tips and tricks
- **Real-time patterns** specific to RTI scenarios

### 🎨 **Enhanced Learning Experience**
- **Interactive diagrams** for query flow visualization
- **Graph operators** for network analysis
- **Time-series patterns** for telemetry analysis
- **Security queries** for threat hunting

### 💡 **Practical Examples**
- **Business analytics** - User behavior and revenue analysis
- **Performance monitoring** - Request analysis and dependency tracking
- **Security compliance** - Audit logs and threat detection
- **Infrastructure monitoring** - Health checks and alerting

## 🚀 Featured Examples

### Request Analysis
```kql
requests
| where timestamp > ago(1h)
| summarize 
    RequestCount = count(),
    AvgDuration = avg(duration),
    P95Duration = percentile(duration, 95),
    FailureRate = round(100.0 * countif(success == false) / count(), 2)
by bin(timestamp, 5m)
| render timechart
```

### Exception Monitoring
```kql
exceptions
| where timestamp > ago(24h)
| summarize Count = count(), Sample = any(outerMessage) by type
| sort by Count desc
| take 10
```

### Performance Metrics
```kql
performanceCounters
| where timestamp > ago(6h)
| where category == "Processor" and counter == "% Processor Time"
| summarize AvgCpuUsage = avg(value) by bin(timestamp, 1m), computer
| render timechart
```

---

*Ready to dive deeper? Explore the [complete cheat sheet](KQL-Cheat-Sheet.md) or browse our [practical examples](examples/)!*
