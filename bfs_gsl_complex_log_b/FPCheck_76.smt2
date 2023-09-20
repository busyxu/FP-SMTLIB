(declare-fun y1_ack!508 () (_ BitVec 64))
(declare-fun x1_ack!511 () (_ BitVec 64))
(declare-fun y2_ack!510 () (_ BitVec 64))
(declare-fun x2_ack!509 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!511))
             (fp.abs ((_ to_fp 11 53) y1_ack!508)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!511) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!509))
        (fp.abs ((_ to_fp 11 53) y2_ack!510))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y2_ack!510))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x2_ack!509))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!510))
          (fp.abs ((_ to_fp 11 53) x2_ack!509)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!510))
          (fp.abs ((_ to_fp 11 53) x2_ack!509)))))

(check-sat)
(exit)
