(declare-fun a_ack!98 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!98) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  #x4018000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) a_ack!98))))

(check-sat)
(exit)
