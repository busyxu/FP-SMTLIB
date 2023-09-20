(declare-fun y1_ack!104 () (_ BitVec 64))
(declare-fun x1_ack!105 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!105))
        (fp.abs ((_ to_fp 11 53) y1_ack!104))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y1_ack!104))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x1_ack!105))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!104))
          (fp.abs ((_ to_fp 11 53) x1_ack!105)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!104))
          (fp.abs ((_ to_fp 11 53) x1_ack!105)))))

(check-sat)
(exit)
