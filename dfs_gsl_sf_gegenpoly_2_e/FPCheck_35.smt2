(declare-fun a_ack!132 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!131 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!132) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  #xbff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) b_ack!131))
          ((_ to_fp 11 53) b_ack!131))))

(check-sat)
(exit)
