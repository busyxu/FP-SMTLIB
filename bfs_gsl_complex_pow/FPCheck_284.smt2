(declare-fun x1_ack!2031 () (_ BitVec 64))
(declare-fun x2_ack!2029 () (_ BitVec 64))
(declare-fun y2_ack!2030 () (_ BitVec 64))
(declare-fun y1_ack!2028 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!2031) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!2029) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!2030) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!2029) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!2031))
        (fp.abs ((_ to_fp 11 53) y1_ack!2028))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!2031) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!2031)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) x2_ack!2029))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) y2_ack!2030)
            (CF_atan2 y1_ack!2028 x1_ack!2031)))))

(check-sat)
(exit)
