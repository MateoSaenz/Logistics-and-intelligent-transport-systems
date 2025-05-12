/*********************************************
 * OPL 22.1.1.0 Model
 * Author: mateo
 * Creation Date: 26 nov. 2024 at 11:28:02
 *********************************************/
// Parameters
int n=...; // Number of machines
int m=...; // Number of task
range objects = 1..m;
int npi[objects]= ...; // Processing times of tasks
range machines = 1..n;
range tasks = 1..m;

dvar boolean machineTask[machines][tasks]; // 1 if task i is assigned to machine j

// Decision variables
dvar int+ Cmax; // Makespan

// Objective
minimize Cmax;

// Constraints
subject to {
    // Each task is assigned to exactly one machine
    forall(i in 1..m) {
        sum(j in 1..n) machineTask[j][i] == 1;
    }

    // Enforce the makespan (Cmax) constraint
    forall(j in 1..n) {
        sum(i in 1..m) npi[i] * machineTask[j][i] <= Cmax;
    }
}

