// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.28;

import {AxodusDeploymentTypes} from "./AxodusDeploymentTypes.sol";

interface IAxodusProtocolFactory {
    event AxodusProtocolDeploymentRecorded(
        uint256 indexed chainId,
        bytes32 indexed chainSlug,
        bytes32 indexed federationId,
        address canonicalDao
    );

    function getAxodusDeploymentManifest()
        external
        view
        returns (AxodusDeploymentTypes.AxodusDeploymentManifest memory);
}
