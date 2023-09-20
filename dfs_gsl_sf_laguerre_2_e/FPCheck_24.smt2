(declare-fun a_ack!69 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!69) ((_ to_fp 11 53) #xc000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW
  #x8000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) a_ack!69))))

(check-sat)
(exit)
