/*********************************************
 * OPL 22.1.1.0 Model
 * Author: ajonch
 * Creation Date: 20 févr. 2024 at 10:07:25
 *********************************************/

	 
	main {
	  
	  var ofile = new IloOplOutputFile("C:/Users/mateo/opl/Projet1/results_dts.txt");
	  
	  for (var i = 1; i <= 240; i++) {
	    var source = new IloOplModelSource("C:/Users/mateo/opl/Projet1/knapsack_model.mod");
	  	var def = new IloOplModelDefinition(source);
	  	var cplex = new IloCplex();
	  	var opl = new IloOplModel(def,cplex);
	  	var data = new IloOplDataSource("C:/Users/mateo/opl/Projet1/Knapsack_Datasets/Knapsack_Dataset_" + i + ".dat");
	  	//C:/Users/mateo/opl/Projet1/Knapsack_500k_Benchmark/Knapsack_500000_Objets_Dataset_1.dat
	  	//"C:\Users\mateo\opl\Projet1\Knapsack_1m_Benchmark\Knapsack_1000000_Objets_Dataset_1.dat"
	  	//"C:\Users\mateo\opl\Projet1\Knapsack_1.5m_Benchmark\Knapsack_1500000_Objets_Dataset_1.dat"
	  	// "C:\Users\mateo\opl\Projet1\Knapsack_Datasets\Knapsack_Dataset_1.dat"
	  	opl.addDataSource(data);
	  	opl.generate();
	  	
	  	// 5 minutes max par instance
	  	cplex.tilim = 15;
	  	
	  	if (cplex.solve()) {
	  	  // Ecriture des résultats
	  	  writeln("Fichier n°" + i);
	  	 // writeln("Nom du fichier :" + opl.filename);
	  	 // writeln("Nombre de tâches : " + opl.task_amount);
	  	  writeln("Objectif : " + cplex.getObjValue());
	  	  writeln("Temps d'exécution : " + cplex.getSolvedTime());
	  	  writeln("");
	
	  	  ofile.writeln("Filename. " + i);
	  	  ofile.writeln("UB: " + cplex.getObjValue());
	  	  ofile.writeln("LB: " + cplex.getBestObjValue());
	  	  ofile.writeln("Gap : " + cplex.getMIPRelativeGap());
	  	  ofile.writeln("Temps d'exécution : " + cplex.getSolvedTime());
	  	  ofile.writeln("");
	  	  
	  	} else {
	  	  writeln("Pas de solution");
	  	}
	  	opl.end();
	  }
	  
	  data.end();
	  def.end();
	  cplex.end();
	  source.end();
	  
	}
