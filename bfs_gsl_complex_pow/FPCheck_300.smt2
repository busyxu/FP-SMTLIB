(declare-fun x1_ack!2175 () (_ BitVec 64))
(declare-fun x2_ack!2173 () (_ BitVec 64))
(declare-fun y2_ack!2174 () (_ BitVec 64))
(declare-fun y1_ack!2172 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!2175) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!2173) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!2174) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!2173) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!2175))
             (fp.abs ((_ to_fp 11 53) y1_ack!2172)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!2175) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!2172)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) x2_ack!2173))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) y2_ack!2174)
            (CF_atan2 y1_ack!2172 x1_ack!2175)))))

(check-sat)
(exit)
