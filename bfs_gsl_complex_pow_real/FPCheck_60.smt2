(declare-fun x1_ack!278 () (_ BitVec 64))
(declare-fun y1_ack!276 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun x_ack!277 () (_ BitVec 64))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!278))
        (fp.abs ((_ to_fp 11 53) y1_ack!276))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!278)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (CF_exp (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) x_ack!277)))
    (CF_cos (fp.mul roundNearestTiesToEven
                    (CF_atan2 y1_ack!276 x1_ack!278)
                    ((_ to_fp 11 53) x_ack!277))))))

(check-sat)
(exit)
