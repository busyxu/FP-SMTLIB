(declare-fun b_ack!51 () (_ BitVec 64))
(declare-fun a_ack!53 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!52 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!51) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!53 #x00000000)))
(assert (not (= #x00000000 a_ack!53)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!51) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!51))
  c_ack!52))

(check-sat)
(exit)
