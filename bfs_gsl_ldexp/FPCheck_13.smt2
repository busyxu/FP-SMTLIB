(declare-fun x_ack!38 () (_ BitVec 64))
(declare-fun e_ack!37 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!38) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!38) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!38)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!38))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not (not a!1))))
(assert (not (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven e_ack!37)
             ((_ to_fp 11 53) #x4090000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven e_ack!37)
             ((_ to_fp 11 53) #xc08fe80000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  x_ack!38
  (CF_pow #x4000000000000000 ((_ to_fp 11 53) roundNearestTiesToEven e_ack!37))))

(check-sat)
(exit)
