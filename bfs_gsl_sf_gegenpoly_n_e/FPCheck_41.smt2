(declare-fun b_ack!244 () (_ BitVec 64))
(declare-fun a_ack!245 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!244) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!245 #x00000000)))
(assert (not (= #x00000000 a_ack!245)))
(assert (not (= #x00000001 a_ack!245)))
(assert (= #x00000002 a_ack!245))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!244) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!244))))

(check-sat)
(exit)
