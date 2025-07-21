---
layout: default
title: KQL Cheat Sheet for Real Time Intelligence
description: A comprehensive reference for Kusto Query Language specifically tailored for Real Time Intelligence scenarios
---

# KQL Cheat Sheet for Real Time Intelligence

Welcome to the comprehensive KQL (Kusto Query Language) cheat sheet designed specifically for Real Time Intelligence scenarios. This resource provides practical examples, best practices, and quick references for working with telemetry data, application insights, and real-time analytics.

## Quick Navigation

- [📖 **Complete Cheat Sheet**](../KQL-Cheat-Sheet.md) - Full reference with all operators and functions
- [🎨 **Visual Examples**](visual-examples.md) - Interactive diagrams and visual guides
- [💡 **Examples**](../examples/) - Practical KQL examples for common scenarios
- [🚀 **Performance Tips**](../KQL-Cheat-Sheet.md#performance-tips) - Optimize your queries for better performance
- [⚡ **Real-time Patterns**](../KQL-Cheat-Sheet.md#real-time-intelligence-specific) - Specific patterns for RTI

## Featured Examples

### Request Analysis
Analyze HTTP requests, response times, and failure rates:
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
Track and analyze application exceptions:
```kql
exceptions
| where timestamp > ago(24h)
| summarize Count = count(), Sample = any(outerMessage) by type
| sort by Count desc
| take 10
```

### Performance Metrics
Monitor system performance counters:
```kql
performanceCounters
| where timestamp > ago(6h)
| where category == "Processor" and counter == "% Processor Time"
| summarize avg(value) by bin(timestamp, 1m), computer
| render timechart
```

## Categories

- **[Application Performance](../examples/performance/)** - Request analysis, response times, error tracking
- **[Infrastructure Monitoring](../examples/monitoring/)** - System health, resource utilization
- **[Business Intelligence](../examples/business/)** - User analytics, custom events
- **[Security & Compliance](../examples/security/)** - Audit logs, anomaly detection

## Getting Started

1. **Basic Queries** - Start with simple table selection and filtering
2. **Time-based Analysis** - Learn to work with timestamps and time ranges
3. **Aggregations** - Master grouping and summary statistics
4. **Advanced Patterns** - Explore joins, window functions, and complex analysis

## Quick Reference

### Essential Operators
- `where` - Filter data
- `project` - Select columns
- `summarize` - Aggregate data
- `sort` - Order results
- `join` - Combine tables
- `render` - Visualize data

### Time Functions
- `ago(1h)` - 1 hour ago
- `bin(timestamp, 5m)` - 5-minute buckets
- `now()` - Current time
- `startofday()` - Start of current day

### Common Patterns
```kql
// Top N analysis
| summarize Count = count() by Category
| top 10 by Count desc

// Time series
| summarize count() by bin(timestamp, 1h)
| render timechart

// Percentage calculation
| summarize Total = count(), Success = countif(condition)
| extend SuccessRate = round(100.0 * Success / Total, 2)
```

---

## Contributing

This cheat sheet is open source! Contributions are welcome:

1. Fork the repository
2. Add your examples or improvements
3. Submit a pull request

## Resources

- [KQL Official Documentation](https://docs.microsoft.com/azure/data-explorer/kusto/query/)
- [Real Time Intelligence Documentation](https://docs.microsoft.com/azure/azure-monitor/app/app-insights-overview)
- [Query Best Practices](https://docs.microsoft.com/azure/data-explorer/kusto/query/best-practices)

---

*Last updated: {{ site.time | date: "%B %d, %Y" }}*
