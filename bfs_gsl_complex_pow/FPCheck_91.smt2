(declare-fun x1_ack!591 () (_ BitVec 64))
(declare-fun x2_ack!589 () (_ BitVec 64))
(declare-fun y1_ack!588 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!590 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!591) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!589) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!589) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!591))
        (fp.abs ((_ to_fp 11 53) y1_ack!588))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!591) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!591)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) x2_ack!589))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) y2_ack!590)
            (CF_atan2 y1_ack!588 x1_ack!591)))))

(check-sat)
(exit)
