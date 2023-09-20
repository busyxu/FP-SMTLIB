(declare-fun y1_ack!416 () (_ BitVec 64))
(declare-fun x1_ack!419 () (_ BitVec 64))
(declare-fun y2_ack!418 () (_ BitVec 64))
(declare-fun x2_ack!417 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!419))
             (fp.abs ((_ to_fp 11 53) y1_ack!416)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!419) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!417))
             (fp.abs ((_ to_fp 11 53) y2_ack!418)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!417) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!416)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x7ff0000000000001)
            (CF_atan2 y2_ack!418 x2_ack!417)))))

(check-sat)
(exit)
