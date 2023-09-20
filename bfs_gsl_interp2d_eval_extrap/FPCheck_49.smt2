(declare-fun x1_ack!468 () (_ BitVec 64))
(declare-fun x0_ack!472 () (_ BitVec 64))
(declare-fun y0_ack!469 () (_ BitVec 64))
(declare-fun x_ack!470 () (_ BitVec 64))
(declare-fun y_ack!471 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!472) ((_ to_fp 11 53) x1_ack!468))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!469) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!470) ((_ to_fp 11 53) x0_ack!472))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!470) ((_ to_fp 11 53) x1_ack!468)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!471) ((_ to_fp 11 53) y0_ack!469))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!471) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!471)
          ((_ to_fp 11 53) y0_ack!469))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!469))))

(check-sat)
(exit)
