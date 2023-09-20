(declare-fun x_hi_ack!20 () (_ BitVec 64))
(declare-fun x_lo_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!21) ((_ to_fp 11 53) x_hi_ack!20))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) x_lo_ack!21)
          ((_ to_fp 11 53) x_hi_ack!20))))

(check-sat)
(exit)
