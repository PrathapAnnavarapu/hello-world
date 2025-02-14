<form className="login-in-form" onSubmit={checkCredentialsBeforeToSendToDB}>
                        <img src={process.env.PUBLIC_URL + '/Images/Hughes_Network_Systems_Logo-2048x523.png'} alt='hughes' className='hughes-logo' />
                        <h1>EBRM</h1>
                        {Object.keys(credentialsError).length !== 0 && <h4 className='error-msg'>{credentialsError.msg}</h4>}
                        {/* <h3> Expense Management Software</h3> */}
                        <label htmlFor='username' className='label-text'>User Name<span className='mandatory'> *</span></label>
                        <div className='input-with-icon'>
                            <FiUser className='icon' />
                            <input
                                id='username'
                                type='text'
                                className='login-input-text-field'
                                placeholder='User Name'
                                name='username'
                                value={credentials.username}
                                onChange={(e) => onHandleChangeCredentials(e)}
                            />
                        </div>
                        <label htmlFor='password' className='label-text'>Password<span className='mandatory'> *</span></label>
                        <div className='input-with-icon'>
                            <RiLockPasswordLine className='icon' />
                            <input
                                id='password'
                                type='password'
                                className='login-input-text-field'
                                placeholder='Password'
                                name='password'
                                value={credentials.password}
                                onChange={(e) => onHandleChangeCredentials(e)}
                            />
                        </div>
                        <h5 className='forgetPass' onClick={() => navigate('/Hughesnetwork/Management/login/ForgetPassword')}>Forgot Password?</h5>
                        <Button type='submit' className='main-primary-button' text={isLoading ? 'Loading' : 'Log In'} />
                    </form>
