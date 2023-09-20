(declare-fun y1_ack!340 () (_ BitVec 64))
(declare-fun x1_ack!343 () (_ BitVec 64))
(declare-fun y2_ack!342 () (_ BitVec 64))
(declare-fun x2_ack!341 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!343))
             (fp.abs ((_ to_fp 11 53) y1_ack!340)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!343) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!341))
             (fp.abs ((_ to_fp 11 53) y2_ack!342)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!341) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!340)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!2 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!342)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    a!2))
    (fp.mul roundNearestTiesToEven
            (CF_atan2 y1_ack!340 x1_ack!343)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (CF_atan2 y2_ack!342 x2_ack!341))))))

(check-sat)
(exit)
