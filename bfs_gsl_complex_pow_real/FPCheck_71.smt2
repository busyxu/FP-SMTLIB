(declare-fun x1_ack!349 () (_ BitVec 64))
(declare-fun y1_ack!347 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun x_ack!348 () (_ BitVec 64))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!349) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!349))
             (fp.abs ((_ to_fp 11 53) y1_ack!347)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!349) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!347)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FMUL_ACCURACY
    (CF_exp (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) x_ack!348)))
    (CF_sin (fp.mul roundNearestTiesToEven
                    (CF_atan2 y1_ack!347 x1_ack!349)
                    ((_ to_fp 11 53) x_ack!348))))))

(check-sat)
(exit)
