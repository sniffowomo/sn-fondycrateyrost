#!/bin/fish
function bal 

    # This function is for getting the balances of all of your accounts 
    # Wallets set 
    # w1 0x3df7eFFc80416b96d5953577d023A1F56AB7c45a
    # w2 0xc70258D26ee511F4086b66d8B9A84DB0C79A1042
    # w3 0xe293c8344c04c8A46BC28D08D3fEA6Fa6827C2A4
    # w4 0x93F8496bbCa6C869DA7c905eFb5Dc87b38617B37

    # Set Variables - Just Jeep changin this all the
    # Wallets 
    set A1 0x3df7eFFc80416b96d5953577d023A1F56AB7c45a
    set A2 0xc70258D26ee511F4086b66d8B9A84DB0C79A1042
    set A3 0xe293c8344c04c8A46BC28D08D3fEA6Fa6827C2A4
    set A4 0x93F8496bbCa6C869DA7c905eFb5Dc87b38617B37

    # Set RPC here 
    set GOE https://eth-goerli.g.alchemy.com/v2/J7mSlfOMfkB8Gi0l0Lyg3WV2N3tzBMg8
    set MUM https://polygon-mumbai.g.alchemy.com/v2/i9eChJfOCWZI7-RnrNGsMkEC6Xx9wix5
    set SEP https://sepolia.infura.io/v3/cd03f6b1d3ad4c65ae3ee0cc42640cf7
    set BSC https://burned-dark-wave.bsc-testnet.discover.quiknode.pro/ba74335e452f9a1616f90976d70a65a482bd1736/

    # Actual Code starts here 

    clear
    # Displaying todays rates 
    # Today Eth Rate
    set today_eth_rate (curl -s rate.sx/1ETH)
    set today_bnb_rate (curl -s rate.sx/1BNB)
    
    # Aesthetic Display
    echo "---"
    echo "Todays ETH Rate" $today_eth_rate
    echo "Todays BNB Rate" $today_bnb_rate
    echo ""
    echo (set_color ff0000)"############################ Balances ##################################"
    echo ""
    echo (set_color 0000ff)"***********************************************************************"
    echo (set_color 0000ff)""
    echo (set_color 0000ff)"W1 0x3df7eFFc80416b96d5953577d023A1F56AB7c45a"
    echo (set_color 0000ff)"W1K 0xcaec54dbcd1480aacc90b314ba96f3672010406be11963f0464fd15c0946ca37"
    echo (set_color 0000ff)""
    echo (set_color 0000ff)"***********************************************************************"
    set w1g (cast balance $A1 --rpc-url $GOE ) 
    set w1m (cast balance $A1 --rpc-url $MUM ) 
    set w1s (cast balance $A1 --rpc-url $SEP ) 
    set w1b (cast balance $A1 --rpc-url $BSC ) 
    echo (set_color 0000ff)"Goerli    :" $w1g
    echo (set_color 0000ff)"Matic     :" $w1m
    echo (set_color 0000ff)"Sepolia   :" $w1s
    echo (set_color 0000ff)"Binance   :" $w1b
    echo ""
    echo (set_color ff0000)"-----------------------------------------------------------------------"
    echo " "
    echo (set_color ee82ee)"***********************************************************************"
    echo (set_color ee82ee)""
    echo (set_color ee82ee)"W2  : 0xc70258D26ee511F4086b66d8B9A84DB0C79A1042"
    echo (set_color ee82ee)"W2K : 0xd053853cc83ebb67a1561303aeedd02ea2b4a1c3fbf076f27ee03b7cc0187a48"
    echo (set_color ee82ee)""
    echo (set_color ee82ee)"***********************************************************************"
    set w1g (cast balance $A2 --rpc-url $GOE )
    set w1m (cast balance $A2 --rpc-url $MUM )
    set w1s (cast balance $A2 --rpc-url $SEP )
    set w1b (cast balance $A2 --rpc-url $BSC )
    echo (set_color ee82ee)"Goerli    :" $w1g
    echo (set_color ee82ee)"Matic     :" $w1m
    echo (set_color ee82ee)"Sepolia   :" $w1s
    echo (set_color ee82ee)"Binance   :" $w1b
    echo ""
    echo (set_color ff0000)"-------------------------------------------------------------------------"
    echo ""
    echo (set_color 3cb371)"***********************************************************************"
    echo (set_color 3cb371)""
    echo (set_color 3cb371)"W3  : 0xe293c8344c04c8A46BC28D08D3fEA6Fa6827C2A4"
    echo (set_color 3cb371)"W3K : 0xf94c3586a050767f1146c3d479b96c210a891892f396fd8458013dbd631c5c1f"
    echo (set_color 3cb371)""
    echo (set_color 3cb371)"***********************************************************************"
    set w1g (cast balance $A3 --rpc-url $GOE)
    set w1m (cast balance $A3 --rpc-url $MUM)
    set w1s (cast balance $A3 --rpc-url $SEP)
    set w1b (cast balance $A3 --rpc-url $BSC)
    echo (set_color 3cb371)"Goerli    :" $w1g
    echo (set_color 3cb371)"Matic     :" $w1m
    echo (set_color 3cb371)"Sepolia   :" $w1s
    echo (set_color 3cb371)"Binance   :" $w1b
    echo ""
    echo (set_color ff0000)"-------------------------------------------------------------------------"
    echo " "
    echo (set_color ffa500)"***********************************************************************"
    echo (set_color ffa500)""
    echo (set_color ffa500)"WR4  : 0x93F8496bbCa6C869DA7c905eFb5Dc87b38617B37"
    echo (set_color ffa500)"WR4K : 0xc9f3fe1d04b60cd8f79a5395fbe310cdc900c6f788ee0ebcb03f5c2ff4344414"
    echo (set_color ffa500)""
    echo (set_color ffa500)"***********************************************************************"
    set w1g (cast balance $A4 --rpc-url $GOE)
    set w1m (cast balance $A4 --rpc-url $MUM)
    set w1s (cast balance $A4 --rpc-url $SEP)
    set w1b (cast balance $A4 --rpc-url $BSC)
    echo (set_color ffa500)"Goerli    :" $w1g
    echo (set_color ffa500)"Matic     :" $w1m
    echo (set_color ffa500)"Sepolia   :" $w1s
    echo (set_color ffa500)"Binance   :" $w1b
    echo ""
    echo (set_color ff0000)"-------------------------------------------------------------------------"
    echo " "
    echo (set_color ff0000)"################################ END ####################################"


end