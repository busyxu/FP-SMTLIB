(declare-fun b_ack!153 () (_ BitVec 64))
(declare-fun a_ack!155 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!154 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!153) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!155 #x00000000)))
(assert (not (= #x00000000 a_ack!155)))
(assert (not (= #x00000001 a_ack!155)))
(assert (= #x00000002 a_ack!155))
(assert (fp.eq ((_ to_fp 11 53) b_ack!153) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  #xbff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!154))
          ((_ to_fp 11 53) c_ack!154))))

(check-sat)
(exit)
