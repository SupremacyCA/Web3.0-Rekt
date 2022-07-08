// SPDX-License-Identifier: BSD-2-Clause

pragma solidity >=0.7.0 <0.9.0;

interface ISmolBrain {
    event Approval(
        address indexed owner,
        address indexed approved,
        uint256 indexed tokenId
    );
    event ApprovalForAll(
        address indexed owner,
        address indexed operator,
        bool approved
    );
    event LandMaxLevel(uint256 brainMaxLevel);
    event LandSet(address land);
    event LevelIQCost(uint256 levelIQCost);
    event RoleAdminChanged(
        bytes32 indexed role,
        bytes32 indexed previousAdminRole,
        bytes32 indexed newAdminRole
    );
    event RoleGranted(
        bytes32 indexed role,
        address indexed account,
        address indexed sender
    );
    event RoleRevoked(
        bytes32 indexed role,
        address indexed account,
        address indexed sender
    );
    event SchoolSet(address school);
    event SmolBrainMint(address to, uint256 tokenId, uint8 gender);
    event Transfer(
        address indexed from,
        address indexed to,
        uint256 indexed tokenId
    );

    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);

    function SMOLBRAIN_MINTER_ROLE() external view returns (bytes32);

    function SMOLBRAIN_OWNER_ROLE() external view returns (bytes32);

    function approve(address to, uint256 tokenId) external;

    function averageIQ() external view returns (uint256);

    function balanceOf(address owner) external view returns (uint256);

    function baseURI() external view returns (string memory);

    function brainMaxLevel() external view returns (uint256);

    function brainz(uint256) external view returns (uint256);

    function getApproved(uint256 tokenId) external view returns (address);

    function getGender(uint256 _tokenId) external pure returns (uint8);

    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    function grantMinter(address _minter) external;

    function grantOwner(address _owner) external;

    function grantRole(bytes32 role, address account) external;

    function hasRole(bytes32 role, address account)
        external
        view
        returns (bool);

    function isApprovedForAll(address owner, address operator)
        external
        view
        returns (bool);

    function isMinter(address _minter) external view returns (bool);

    function isOwner(address _owner) external view returns (bool);

    function land() external view returns (address);

    function levelIQCost() external view returns (uint256);

    function mintFemale(address _to) external;

    function mintMale(address _to) external;

    function name() external view returns (string memory);

    function ownerOf(uint256 tokenId) external view returns (address);

    function renounceRole(bytes32 role, address account) external;

    function revokeRole(bytes32 role, address account) external;

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) external;

    function scanBrain(uint256 _tokenId) external view returns (uint256 IQ);

    function school() external view returns (address);

    function schoolDrop(uint256 _tokenId, uint256 _iqEarned) external;

    function setApprovalForAll(address operator, bool approved) external;

    function setBaseURI(string memory _baseURItoSet) external;

    function setLand(address _land) external;

    function setLevelIQCost(uint256 _levelIQCost) external;

    function setMaxLevel(uint256 _brainMaxLevel) external;

    function setSchool(address _school) external;

    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    function symbol() external view returns (string memory);

    function tokenByIndex(uint256 index) external view returns (uint256);

    function tokenOfOwnerByIndex(address owner, uint256 index)
        external
        view
        returns (uint256);

    function tokenURI(uint256 _tokenId) external view returns (string memory);

    function totalSupply() external view returns (uint256);

    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;
}