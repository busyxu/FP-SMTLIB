(declare-fun y1_ack!886 () (_ BitVec 64))
(declare-fun x1_ack!889 () (_ BitVec 64))
(declare-fun y2_ack!888 () (_ BitVec 64))
(declare-fun x2_ack!887 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!889))
             (fp.abs ((_ to_fp 11 53) y1_ack!886)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!889) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!887))
        (fp.abs ((_ to_fp 11 53) y2_ack!888))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y2_ack!888))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x2_ack!887))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!888))
          (fp.abs ((_ to_fp 11 53) x2_ack!887)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!888))
          (fp.abs ((_ to_fp 11 53) x2_ack!887)))))

(check-sat)
(exit)
