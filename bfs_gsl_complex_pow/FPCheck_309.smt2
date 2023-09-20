(declare-fun x1_ack!2243 () (_ BitVec 64))
(declare-fun x2_ack!2241 () (_ BitVec 64))
(declare-fun y2_ack!2242 () (_ BitVec 64))
(declare-fun y1_ack!2240 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!2243) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!2241) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!2242) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!2241) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!2243))
             (fp.abs ((_ to_fp 11 53) y1_ack!2240)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!2243) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!2240)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (CF_atan2 y1_ack!2240 x1_ack!2243)
            ((_ to_fp 11 53) x2_ack!2241))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) y2_ack!2242) a!1))))

(check-sat)
(exit)
