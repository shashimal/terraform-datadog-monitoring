datadog_api_key = "your api key"
datadog_app_key = "your app key"

dashboard_name = "RDS Monitoring"
dashboard_layout_type = "ordered"

# Query Value Widgets
query_value_widgets = [
  {
    type      = "query_value"
    query     = "avg:aws.rds.database_connections{dbinstanceidentifier:uat-rds-aurorapostgresinstance*}"
    title     = "DB Connections"
    live_span = "1h"
    precision = 0
  }
]

# Timeseries Widgets
timeseries_widgets = [

  {
    type      = "timeseries"
    query     = "avg:aws.rds.cpuutilization{dbinstanceidentifier:uat-rds-aurorapostgresinstance*} by {dbinstanceidentifier}"
    title     = "Cluster CPU Utilization"
    live_span = "1h"
    display_type = "line"
  },
  {
    type      = "timeseries"
    query     = "avg:aws.rds.freeable_memory{dbinstanceidentifier:uat-rds-aurorapostgresinstance*} by {dbinstanceidentifier}"
    title     = "Cluster Freeable Memory"
    live_span = "1h"
    display_type = "line"
  },
  {
    type      = "timeseries"
    query     = "avg:aws.rds.write_latency{name:uat-rds-aurorapostgresinstance*} by {dbinstanceidentifier}"
    title     = "Write Latency"
    live_span = "1h"
    display_type = "line"
  },
  {
    type      = "timeseries"
    query     = "avg:aws.rds.read_latency{dbinstanceidentifier:uat-rds-aurorapostgresinstance*} by {dbinstanceidentifier}"
    title     = "Read Latency"
    live_span = "1h"
    display_type = "line"
  }
]