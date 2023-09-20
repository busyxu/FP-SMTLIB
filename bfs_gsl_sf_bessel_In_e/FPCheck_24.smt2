(declare-fun b_ack!46 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!46)))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!46))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!46))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.abs ((_ to_fp 11 53) b_ack!46)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.abs ((_ to_fp 11 53) b_ack!46))
            ((_ to_fp 11 53) #x3cb0000000000000))
    (fp.abs a!2)))))

(check-sat)
(exit)
