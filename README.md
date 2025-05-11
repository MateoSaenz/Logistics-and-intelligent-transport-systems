# Logistics-and-intelligent-transport-systems

This repository explores data-driven optimization models for improving transport systems—whether for physical logistics (e.g., fleets, supply chains) or abstract flows (e.g., information networks). The project combines theoretical statistics, computational power, and practical implementations to evaluate and optimize performance across four key models:

📌 Key Models & Approaches

1. WITNESS Model (FIFO)
  Simulates First-In-First-Out (FIFO) queue dynamics in transport/logistics systems.
  Focuses on throughput, bottlenecks, and resource allocation.

3. Control Section for Validation
  Framework to validate model accuracy against real-world datasets.
  Metrics: Precision, runtime efficiency, and scalability.

4. Knapsack Model Solver Performance
  Solves resource allocation problems (e.g., cargo loading, cost-capacity tradeoffs).  
  Benchmarks IBM ILOG CPLEX against heuristic/approximate methods.

5. Parallel Machine Scheduling
  Optimizes task assignments across parallel nodes (e.g., delivery routes, manufacturing lines).
  Evaluates scheduling policies for minimal latency/maximal utilization.

🔧 Tools & Technologies

- IBM ILOG CPLEX Optimization Studio: For exact MIP/LP solutions.
- Python + CPLEX API: Hybrid modeling and performance analysis.
- Statistical Analysis: Hypothesis testing, sensitivity analysis.
- Datasets: Custom and open-source (e.g., logistics networks, synthetic benchmarks).

🚀 Use Cases
Enterprise Logistics: Fleet routing, warehouse optimization.
Digital Systems: Information flow scheduling, network load balancing.

📂 Repository Structure

├── /data/                 # Sample datasets  
├── /notebooks/            # Jupyter/Python analysis (CPLEX integration)  
├── /scripts/              # Optimization model scripts (OPL, Python)  
├── /results/              # Performance benchmarks & visualizations  
└── /docs/                 # Theory references, model explanations  
