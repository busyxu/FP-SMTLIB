(declare-fun x_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!27))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!27)) ((_ to_fp 11 53) #x3fe5368f08461f9f)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fb0d08ec54894e1
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!27)
          ((_ to_fp 11 53) x_ack!27))))

(check-sat)
(exit)
