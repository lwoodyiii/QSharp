namespace ExploringSuperposition {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    
    @EntryPoint()
    operation GenerateRandomBit() : Result {
        use q = Qubit(){
            Message("Initialized Qubit");
            DumpMachine();
            Message(" ");
            H(q);
            Message("Qubit after H");
            DumpMachine();
            Message("");
            let randomBit = M(q);
            Message("Qubit after measurement");
            DumpMachine();
            Message("");
            Reset(q);
            Message("Qubit after resetting");
            DumpMachine();
            Message("");
            return randomBit;
        }
        
        
    }
}
