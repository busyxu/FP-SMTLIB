(declare-fun y1_ack!432 () (_ BitVec 64))
(declare-fun x1_ack!435 () (_ BitVec 64))
(declare-fun y2_ack!434 () (_ BitVec 64))
(declare-fun x2_ack!433 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!435))
             (fp.abs ((_ to_fp 11 53) y1_ack!432)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!435) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!433))
             (fp.abs ((_ to_fp 11 53) y2_ack!434)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!433) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!434)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!2 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!432)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (CF_atan2 y1_ack!432 x1_ack!435)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    a!1))
    (fp.mul roundNearestTiesToEven
            a!2
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (CF_atan2 y2_ack!434 x2_ack!433))))))

(check-sat)
(exit)
