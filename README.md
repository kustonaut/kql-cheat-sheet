# KQL Cheat Sheet for Real Time Intelligence

A comprehensive, community-driven reference for Kusto Query Language (KQL) specifically tailored for Real Time Intelligence scenarios. This repository provides practical examples, best practices, and quick references for working with telemetry data, application insights, and real-time analytics.

> **Originally compiled by**: Akshay Dixit (kustonaut)  
> **Source**: http://aka.ms/kustonautKQLcheatsheet  
> **Enhanced for**: Real Time Intelligence scenarios and community collaboration

## 🎯 What is KQL and Real Time Intelligence?

### 📊 Kusto Query Language (KQL)
**KQL** is a powerful query language designed for analyzing large datasets in real-time. Originally developed for Azure Data Explorer, KQL excels at:

- **Fast data exploration** - Query massive datasets with sub-second response times
- **Time-series analysis** - Built-in functions for temporal data patterns
- **Log analytics** - Parse, filter, and correlate unstructured log data
- **Statistical analysis** - Advanced aggregations and mathematical functions
- **Visualization ready** - Direct integration with charts and dashboards

### 🚀 Microsoft Fabric Real Time Intelligence
**Real Time Intelligence (RTI)** is Microsoft's comprehensive solution for real-time analytics, providing:

- **Unified analytics platform** - Single environment for all real-time data needs
- **Auto-scaling infrastructure** - Handles data from MB to PB scale automatically
- **Low-latency ingestion** - Stream data with minimal delay from source to insights
- **No-code/low-code options** - Visual tools alongside powerful KQL capabilities
- **Enterprise security** - Built-in governance, compliance, and data protection

### 🏢 Eventhouse in Real Time Intelligence
**Eventhouse** is the cornerstone data store in RTI, offering:

- **Multi-modal data support** - Handle structured, semi-structured, and unstructured data
- **Automatic indexing** - Smart indexing for optimal query performance
- **Time-based partitioning** - Efficient storage and retrieval of time-series data
- **Real-time streaming** - Direct ingestion from Event Hubs, IoT devices, and applications
- **Schema flexibility** - Dynamic schema evolution without downtime
- **Cross-database queries** - Query across multiple Eventhouses seamlessly

#### Key Eventhouse Benefits:
- **📈 Performance**: Columnar storage with intelligent caching
- **🔄 Flexibility**: Schema-on-read with dynamic typing
- **🔒 Security**: Row-level security and advanced access controls
- **💰 Cost-effective**: Pay only for compute and storage used
- **🌐 Global**: Multi-region deployment with data residency options

### 🎯 Why This Combination Matters
The synergy of **KQL + RTI + Eventhouse** creates a powerful ecosystem for:

- **DevOps teams** - Monitor applications and infrastructure in real-time
- **Business analysts** - Generate insights from streaming business data
- **Data engineers** - Build robust real-time data pipelines
- **Security teams** - Detect threats and anomalies as they happen
- **IoT solutions** - Process and analyze sensor data at scale

## 🚀 Quick Start

- **[📖 View the Cheat Sheet](KQL-Cheat-Sheet.md)** - Complete reference guide
- **[📱 Download PDF](Kustonaut's%20KQL%20Cheatsheet.pdf)** - Offline reference
- **[🌐 Interactive Web Version](https://kustonaut.github.io/kql-cheat-sheet)** - Browse online
- **[💡 Browse Examples](examples/)** - Practical query examples

## 📋 What's Included

### 🎨 Visual Learning Features
- **📊 Interactive Diagrams** - Mermaid flowcharts and mind maps
- **🖼️ Visual Examples** - SVG illustrations of query patterns
- **📈 Performance Comparisons** - Side-by-side optimization examples
- **🎯 Query Flow Diagrams** - Visual representation of KQL operations

### Core Reference
- **Basic Syntax** - Table selection, filtering, projections
- **Data Types** - String, numeric, and datetime operations
- **Common Operators** - Essential KQL operators with examples
- **Time Functions** - Working with timestamps and time ranges
- **Aggregations** - Grouping, counting, and statistical functions
- **Joins** - Combining data from multiple tables
- **Advanced Patterns** - Window functions, dynamic objects, case statements

### Real Time Intelligence Specific
- **Telemetry Analysis** - Request analysis, performance monitoring
- **Exception Tracking** - Error analysis and trending
- **Dependency Analysis** - External service monitoring
- **Custom Events** - Business metrics and user analytics
- **Log Analytics** - Search and correlation across log types
- **Alerting Queries** - Real-time monitoring and alerting

### Practical Examples
- **Application Performance** - Response times, error rates, throughput
- **Infrastructure Monitoring** - System health, resource utilization
- **Business Intelligence** - User behavior, conversion tracking
- **Security & Compliance** - Audit logs, anomaly detection

## 🎯 Target Audience

- **DevOps Engineers** - Monitor application and infrastructure performance
- **Site Reliability Engineers** - Create alerts and dashboards
- **Data Analysts** - Analyze telemetry and business metrics
- **Software Developers** - Debug and optimize applications
- **Security Analysts** - Investigate security events and patterns

## 🏗️ Project Structure

```
├── KQL-Cheat-Sheet.md          # Main cheat sheet
├── examples/                   # Practical examples
│   ├── performance/            # Performance monitoring queries
│   ├── monitoring/             # Health and alerting queries
│   ├── business/               # Business intelligence queries
│   └── security/               # Security and audit queries
├── docs/                       # GitHub Pages website
│   ├── index.md                # Website homepage
│   └── _config.yml             # Jekyll configuration
└── .github/
    ├── workflows/pages.yml     # GitHub Pages deployment
    └── copilot-instructions.md # Copilot customization
```

## 📚 Usage Examples

### Quick Reference
```kql
// Basic pattern: Filter → Transform → Aggregate
TableName
| where timestamp > ago(1h)
| summarize count() by EventLevel
| sort by count_ desc
```

### Performance Analysis
```kql
// Request performance analysis
requests
| where timestamp > ago(6h)
| summarize 
    Requests = count(),
    AvgDuration = avg(duration),
    P95Duration = percentile(duration, 95)
by bin(timestamp, 15m)
| render timechart
```

### Error Analysis
```kql
// Exception trending
exceptions
| where timestamp > ago(24h)
| summarize Count = count() by bin(timestamp, 1h), type
| render timechart
```

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help:

### Adding Examples
1. Fork the repository
2. Add your query examples to the appropriate category
3. Include comments explaining the query purpose
4. Submit a pull request

### Improving Documentation
- Fix typos or unclear explanations
- Add missing operators or functions
- Improve example queries
- Add new Real Time Intelligence scenarios

### Suggesting Improvements
- Open an issue for suggestions
- Discuss new categories or sections
- Propose better organization

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔗 Related Resources

- **[KQL Official Documentation](https://docs.microsoft.com/azure/data-explorer/kusto/query/)** - Microsoft's official KQL reference
- **[Real Time Intelligence](https://docs.microsoft.com/azure/azure-monitor/app/app-insights-overview)** - Azure Application Insights documentation
- **[KQL Query Best Practices](https://docs.microsoft.com/azure/data-explorer/kusto/query/best-practices)** - Performance optimization guide
- **[Azure Data Explorer](https://docs.microsoft.com/azure/data-explorer/)** - Azure's analytics service

## ⭐ Show Your Support

If this cheat sheet helps you, please:
- ⭐ **Star the repository**
- 🍴 **Fork and customize** for your team
- 📤 **Share with colleagues**
- 🐛 **Report issues** or suggest improvements

## 📞 Support

- **Issues**: Report bugs or request features via GitHub Issues
- **Discussions**: Ask questions in GitHub Discussions
- **Community**: Share your KQL tips and tricks

---

**Made with ❤️ for the Real Time Intelligence community**

*Keep this cheat sheet handy and happy querying!* 🔍
