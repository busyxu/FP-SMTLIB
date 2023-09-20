(declare-fun x1_ack!398 () (_ BitVec 64))
(declare-fun y1_ack!395 () (_ BitVec 64))
(declare-fun x2_ack!396 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!397 () (_ BitVec 64))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!398) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!395) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!396) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!396) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!398))
             (fp.abs ((_ to_fp 11 53) y1_ack!395)))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!398) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!395) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!395)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            (CF_atan2 y1_ack!395 x1_ack!398)
            ((_ to_fp 11 53) x2_ack!396))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) y2_ack!397) a!1))))

(check-sat)
(exit)
