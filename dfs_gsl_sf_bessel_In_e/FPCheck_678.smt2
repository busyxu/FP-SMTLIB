(declare-fun b_ack!1021 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!1021)))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1021))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!1021))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!1021))))))
  (FPCHECK_FMUL_ACCURACY (CF_exp (fp.abs ((_ to_fp 11 53) b_ack!1021))) a!2))))

(check-sat)
(exit)
