(declare-fun x1_ack!403 () (_ BitVec 64))
(declare-fun x0_ack!407 () (_ BitVec 64))
(declare-fun y0_ack!404 () (_ BitVec 64))
(declare-fun x_ack!405 () (_ BitVec 64))
(declare-fun y_ack!406 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!407) ((_ to_fp 11 53) x1_ack!403))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!404) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!405) ((_ to_fp 11 53) x0_ack!407))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!405) ((_ to_fp 11 53) x1_ack!403)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!406) ((_ to_fp 11 53) y0_ack!404))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!406) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!405)
          ((_ to_fp 11 53) x0_ack!407))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!403)
          ((_ to_fp 11 53) x0_ack!407))))

(check-sat)
(exit)
