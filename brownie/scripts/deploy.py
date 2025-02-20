from brownie import accounts,SimpleStorage

def deploy():
    account = accounts.add(config["wallets"]["from_key"])
    #account = accounts[0]
    simple_storage = SimpleStorage.deploy({"from": account})
    stored_value = simple_storage.retrieve()
    print(stored_value)
    tr = simple_storage.store(15, {"from": account})
    tr.wait(1)
    updated_stored_value = simple_storage.retrieve()
    print(updated_stored_value)

def main():
    deploy()