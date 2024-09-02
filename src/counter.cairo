#[starknet::contract]
mod counter_contract {
    #[storage]
    struct Storage {
        // Store the counter variable as u32
        counter: u32,
    }

    #[constructor]
    fn constructor(ref mut self, initial_value: u32) {
        // Initialize the counter variable with the given input value
        self.counter.write(initial_value);
    }
}
