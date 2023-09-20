(declare-fun y1_ack!440 () (_ BitVec 64))
(declare-fun x1_ack!443 () (_ BitVec 64))
(declare-fun y2_ack!442 () (_ BitVec 64))
(declare-fun x2_ack!441 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!443))
             (fp.abs ((_ to_fp 11 53) y1_ack!440)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!443) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!441))
             (fp.abs ((_ to_fp 11 53) y2_ack!442)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!441) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!442)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!2 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!440)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (CF_atan2 y1_ack!440 x1_ack!443)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    a!1))
    (fp.mul roundNearestTiesToEven
            a!2
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (CF_atan2 y2_ack!442 x2_ack!441))))))

(check-sat)
(exit)
