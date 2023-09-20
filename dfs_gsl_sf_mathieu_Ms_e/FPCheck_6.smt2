(declare-fun q_ack!51 () (_ BitVec 64))
(declare-fun j_ack!53 () (_ BitVec 32))
(declare-fun n_ack!50 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun x_ack!52 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!51) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!53 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!53)))
(assert (not (= #x00000000 n_ack!50)))
(assert (FPCHECK_FMUL_ACCURACY
  #x2006a09e667f3bcd
  (CF_exp (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbff0000000000000)
                  ((_ to_fp 11 53) x_ack!52)))))

(check-sat)
(exit)
