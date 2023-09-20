(declare-fun b_ack!89 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!89) ((_ to_fp 11 53) #x404e000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!89) ((_ to_fp 11 53) #xc04e000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!89)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!89)
          ((_ to_fp 11 53) b_ack!89))
  #x3ca6827863b97d97))

(check-sat)
(exit)
