(declare-fun x1_ack!965 () (_ BitVec 64))
(declare-fun x2_ack!963 () (_ BitVec 64))
(declare-fun y1_ack!962 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!964 () (_ BitVec 64))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!965) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!963) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!963) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!965))
             (fp.abs ((_ to_fp 11 53) y1_ack!962)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!965) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!962)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            (CF_atan2 y1_ack!962 x1_ack!965)
            ((_ to_fp 11 53) x2_ack!963))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) y2_ack!964) a!1))))

(check-sat)
(exit)
