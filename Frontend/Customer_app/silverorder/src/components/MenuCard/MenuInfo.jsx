import "./Styles/MenuInfo.css"; // CSS 파일을 가져옴
import useCartStore from "../../stores/cart";
import { useNavigate } from "react-router-dom";

const MenuInfo = ({ data }) => {
  const navigate = useNavigate();

  const { addToCart } = useCartStore();

  const handleAddToCart = ({ category, productId, name, price, options }) => {
    // productId, name, price, options를 사용하여 새로운 item 객체 생성
    const item = { category, productId, name, price, options };
    // 장바구니에 제품 추가
    addToCart(item);
  };

  const go_to_optionpage = ({ category, productId, name, price, options }) => {
    // productId, name, price, options를 사용하여 새로운 item 객체 생성
    const item = { category, productId, name, price, options };
    navigate("/silverorder/choiceoption", { state: { item } });
  };

  console.log(data);

  return (
    <div>
      {/* 메뉴 데이터를 순회하며 각 메뉴의 이름과 가격을 출력 */}
      {data.products.map((product) => {
        // imageUrl의 첫 번째 key 값을 찾아 해당 URL을 가져옴
        const imageKey = Object.keys(product.imageUrl)[0];
        const imageUrl = product.imageUrl[imageKey];

        return (
          <div key={product.id} className="menu-item">
            <div className="menu-item-info">
              <img
                className="menu-item-img"
                src={imageUrl} // 동적으로 가져온 URL을 설정
                alt="메뉴 사진"
              />
              <p id="menu-item-name">{product.name}</p>
            </div>
            <div className="menu-item-option-btn">
              <div
                className="menu-item-normal"
                onClick={() =>
                  handleAddToCart({
                    category: product.category,
                    productId: product.id,
                    name: product.name,
                    price: product.price,
                    options: null,
                  })
                }
              >
                <p id="menu-item-normal01">기본</p>
                <p id="menu-item-normal02">{product.price}</p>
              </div>
              <div
                className="menu-item-plus"
                onClick={() =>
                  go_to_optionpage({
                    category: product.category,
                    productId: product.id,
                    name: product.name,
                    price: product.price,
                    options: null,
                  })
                }
              >
                <p id="menu-item-plus01">옵션 추가</p>
                <p id="menu-item-plus02">{product.price} + a</p>
              </div>
            </div>
          </div>
        );
      })}
    </div>
  );
};

export default MenuInfo;
