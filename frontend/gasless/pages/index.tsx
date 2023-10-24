import { ConnectWallet, Web3Button } from "@thirdweb-dev/react";
import styles from "../styles/Home.module.css";
import Image from "next/image";
import { NextPage } from "next";
import {abi} from "../constants/abi";
import {CA} from "../constants/address";

const Home: NextPage = () => {
  return (
    <main className={styles.main}>
      <div className={styles.container}>
        <div className={styles.header}>
          <h1 className={styles.title}>
            Welcome to Dypumping Gasless Transaction {" "}
            <span className={styles.gradientText0}>
            </span>
          </h1>
          

        
          
            <ConnectWallet
              dropdownPosition={{
                side: "bottom",
                align: "center",
              }}
            />
          </div>
          <div className={styles.connect}>
          <div>
            <Web3Button contractAddress={CA}contractAbi={abi} action={(contract) => contract.call("setNumber",[10])}>setnumber</Web3Button>
          </div>
        </div>

    
      </div>
    </main>
  );
};

export default Home;
