(declare-fun a_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!34 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #xc008000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!34))
          ((_ to_fp 11 53) b_ack!34))
  #x4018000000000000))

(check-sat)
(exit)
