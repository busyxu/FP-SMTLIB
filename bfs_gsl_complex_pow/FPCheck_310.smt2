(declare-fun x1_ack!2251 () (_ BitVec 64))
(declare-fun x2_ack!2249 () (_ BitVec 64))
(declare-fun y2_ack!2250 () (_ BitVec 64))
(declare-fun y1_ack!2248 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!2251) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!2249) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!2250) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!2249) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!2251))
             (fp.abs ((_ to_fp 11 53) y1_ack!2248)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!2251) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!2248)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (CF_atan2 y1_ack!2248 x1_ack!2251)
            ((_ to_fp 11 53) x2_ack!2249))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) y2_ack!2250) a!1))))

(check-sat)
(exit)
