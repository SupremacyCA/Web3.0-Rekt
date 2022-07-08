// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

interface ITreasureMarketplaceBuyer {
    function buyItem(
        address _nftAddress,
        uint256 _tokenId,
        address _owner,
        uint256 _quantity,
        uint256 _pricePerItem
    ) external;

    function marketplace() external view returns (address);

    function onERC1155BatchReceived(
        address,
        address,
        uint256[] memory,
        uint256[] memory,
        bytes memory
    ) external returns (bytes4);

    function onERC1155Received(
        address,
        address,
        uint256,
        uint256,
        bytes memory
    ) external returns (bytes4);

    function onERC721Received(
        address,
        address,
        uint256,
        bytes memory
    ) external returns (bytes4);

    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    function withdraw() external;

    function withdrawNFT(
        address _nftAddress,
        uint256 _tokenId,
        uint256 _quantity
    ) external;
}