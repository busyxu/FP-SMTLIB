(declare-fun x_hi_ack!14 () (_ BitVec 64))
(declare-fun x_lo_ack!15 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!15) ((_ to_fp 11 53) x_hi_ack!14))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) x_lo_ack!15)
          ((_ to_fp 11 53) x_hi_ack!14))))

(check-sat)
(exit)
