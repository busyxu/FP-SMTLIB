(declare-fun c_ack!322 () (_ BitVec 64))
(declare-fun a_ack!323 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!322) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!323) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!323) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!322))
       ((_ to_fp 11 53) #x5fe9999999999999)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!322))
       ((_ to_fp 11 53) #x2003333333333333)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!322)
                  (CF_exp a_ack!323)))))

(check-sat)
(exit)
