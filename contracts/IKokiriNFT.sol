//Contract based on https://docs.openzeppelin.com/contracts/3.x/erc721
// SPDX-License-Identifier: MIT
pragma solidity >0.6.0;

// Basic NFT contract of Magi Kokiri market
interface IKokiriNFT {
    // It is possible to update minter address by contract owner or minter self
    function setMinter(address _minter) external;
    // NFT should be minted by only minter and contract owner with recipient and tokenURI.
    // Minted token will be sent to recipient
    function mintNFT(address recipient, string memory tokenURI) external returns (uint256);
    // NFT owner can transfer own token to any recipient by _tokenId
    function transferNFT(address recipient, uint256 _tokenId) external;
    // NFT owner can update token URI identified by tokenId
    function setTokenURI(uint256 _tokenId, string memory tokenURI) external;
    // Someone can check existing tokens by _tokenId
    function exists(uint256 _tokenId) external view returns (bool);
    // Someone can get token Id list of any holder
    function tokens(address _holder) external view returns (uint256[] memory);
}