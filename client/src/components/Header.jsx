import ethLogo from '../assets/ethlogo.png'
import { setGlobalState } from '../store'

const Header = () => {
  return (
    <header className="flex flex-row items-center justify-between drop-shadow-md py-2 px-5 bg-white">
      <div className="flex flex-row justify-center items-center cursor-pointer">
        <img
       
        />
        <span>A12</span>
      </div>
      <nav className="flex flex-row justify-center items-center list-none">
        <li className="cursor-pointer mr-3 hover:text-blue-500"><a href="http://localhost/dalto/gajiweb/konvertereth/index.html" class="btn btn-sm btn-warning" ><i class="fa fa-exchange"> </i> Converter</a></li>
        <li className="cursor-pointer mr-3 hover:text-blue-500"><a href=" http://localhost/dalto/gajiweb/admin/index.php" class="btn btn-outline-primary my-2 my-sm-0" ><i class="fa fa-credit-card"> </i> Halaman Admin</a></li>
        <li className="cursor-pointer mr-3">
          <button
            onClick={() => setGlobalState('modal', 'scale-100')}
            className="text-white bg-blue-500 py-2 px-5 rounded-xl drop-shadow-xl border border-transparent hover:bg-transparent hover:text-blue-500 hover:border hover:border-blue-500 focus:outline-none focus:ring"
          >
            Kirim Uang
          </button>
        </li>
      </nav>
    </header>
  )
}

export default Header

