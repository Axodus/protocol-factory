// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.28;

library AxodusDeploymentTypes {
    enum ChainRole {
        Execution,
        Voting,
        Spoke
    }

    struct ChainDescriptor {
        uint256 chainId;
        bytes32 chainSlug;
        ChainRole role;
        bytes32 finalityProfile;
    }

    struct OSxDeployment {
        address daoFactory;
        address pluginRepoFactory;
        address pluginSetupProcessor;
        address daoRegistry;
        address pluginRepoRegistry;
        address managementDao;
    }

    struct PluginDeployment {
        address multichainGovernanceRepo;
        address multichainGovernanceSetup;
        address harmonyDelegationVotingRepo;
        address harmonyDelegationVotingSetup;
    }

    struct ConditionDeployment {
        address constitutionalExecutionCondition;
        address treasuryPolicyCondition;
        address remoteExecutionCondition;
    }

    struct BridgeDeployment {
        address layerZeroEndpoint;
        address multichainPeer;
        address oftEndpoint;
    }

    struct FederationBootstrap {
        bytes32 federationId;
        address canonicalDao;
        address constitutionalGuard;
    }

    struct AxodusDeploymentManifest {
        ChainDescriptor chain;
        OSxDeployment osx;
        PluginDeployment plugins;
        ConditionDeployment conditions;
        BridgeDeployment bridge;
        FederationBootstrap federation;
    }
}
