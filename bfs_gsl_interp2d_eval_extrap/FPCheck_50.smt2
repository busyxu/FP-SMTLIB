(declare-fun x1_ack!478 () (_ BitVec 64))
(declare-fun x0_ack!482 () (_ BitVec 64))
(declare-fun y0_ack!479 () (_ BitVec 64))
(declare-fun x_ack!480 () (_ BitVec 64))
(declare-fun y_ack!481 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!482) ((_ to_fp 11 53) x1_ack!478))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!479) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!480) ((_ to_fp 11 53) x0_ack!482))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!480) ((_ to_fp 11 53) x1_ack!478)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!481) ((_ to_fp 11 53) y0_ack!479))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!481) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!481)
          ((_ to_fp 11 53) y0_ack!479))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!479))))

(check-sat)
(exit)
