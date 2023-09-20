(declare-fun y1_ack!392 () (_ BitVec 64))
(declare-fun x1_ack!395 () (_ BitVec 64))
(declare-fun y2_ack!394 () (_ BitVec 64))
(declare-fun x2_ack!393 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!395))
             (fp.abs ((_ to_fp 11 53) y1_ack!392)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!395) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!393))
             (fp.abs ((_ to_fp 11 53) y2_ack!394)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!393) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!394)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FMUL_UNDERFLOW
    (CF_atan2 y1_ack!392 x1_ack!395)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x7ff0000000000001) a!1))))

(check-sat)
(exit)
