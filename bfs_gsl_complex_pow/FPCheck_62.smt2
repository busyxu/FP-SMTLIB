(declare-fun x1_ack!374 () (_ BitVec 64))
(declare-fun y1_ack!371 () (_ BitVec 64))
(declare-fun x2_ack!372 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!373 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!374) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!371) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!372) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!372) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!374))
             (fp.abs ((_ to_fp 11 53) y1_ack!371)))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!374) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!371) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!371)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FMUL_ACCURACY y2_ack!373 a!1)))

(check-sat)
(exit)
