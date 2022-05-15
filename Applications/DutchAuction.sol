pragma solidity ^0.8.10;


// NFT의 판매자는 NFT의 시작 가격을 설정하는 본 계약을 배포합니다.
// 경매는 7일간 계속된다.
// NFT의 가격은 시간이 지남에 따라 하락한다.
// 참가자들은 스마트 계약으로 계산한 현재 가격보다 더 큰 ETH를 입금하면 구매가 가능하다.
// 경매는 구매자가 NFT를 구매하면 끝난다.


interface IERC721 {
    function transferFrom(
        address _from,
        address _to,
        uint _nftId
    ) external;
}

contract DutchAuction {
    uint private constant DURATION = 7 days;

    IERC721 public immutable nft;
    uint public immutable nftId;

    address payable public immutable seller;
    uint public immutable startingPrice;
    uint public immutable startAt;
    uint public immutable expiresAt;
    uint public immutable discountRate;

}    