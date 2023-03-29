#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Bonjour(from: ContractAddress, value: felt252) {}

    #[event]
    fn AuRevoir(from: ContractAddress, value: felt252) {}


    #[external]
    fn Dire_Bonjour(message: felt252) {
        let caller = get_caller_address();
        Bonjour(caller, message);
    }

    #[external]
    fn Dire_AuRevoir(message: felt252) {
        let caller = get_caller_address();
        AuRevoir(caller, message);
    }
}