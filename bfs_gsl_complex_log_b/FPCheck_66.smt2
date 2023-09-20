(declare-fun y1_ack!424 () (_ BitVec 64))
(declare-fun x1_ack!427 () (_ BitVec 64))
(declare-fun y2_ack!426 () (_ BitVec 64))
(declare-fun x2_ack!425 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!427))
             (fp.abs ((_ to_fp 11 53) y1_ack!424)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!427) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!425))
             (fp.abs ((_ to_fp 11 53) y2_ack!426)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!425) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!424)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FMUL_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x7ff0000000000001)
            (CF_atan2 y2_ack!426 x2_ack!425)))))

(check-sat)
(exit)
