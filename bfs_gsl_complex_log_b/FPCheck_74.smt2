(declare-fun y1_ack!492 () (_ BitVec 64))
(declare-fun x1_ack!495 () (_ BitVec 64))
(declare-fun y2_ack!494 () (_ BitVec 64))
(declare-fun x2_ack!493 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!495))
             (fp.abs ((_ to_fp 11 53) y1_ack!492)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!495) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!493))
        (fp.abs ((_ to_fp 11 53) y2_ack!494))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y2_ack!494))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x2_ack!493))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!494))
          (fp.abs ((_ to_fp 11 53) x2_ack!493)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!494))
          (fp.abs ((_ to_fp 11 53) x2_ack!493)))))

(check-sat)
(exit)
