(declare-fun x1_ack!483 () (_ BitVec 64))
(declare-fun x0_ack!487 () (_ BitVec 64))
(declare-fun y0_ack!484 () (_ BitVec 64))
(declare-fun x_ack!485 () (_ BitVec 64))
(declare-fun y_ack!486 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!487) ((_ to_fp 11 53) x1_ack!483))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!484) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!485) ((_ to_fp 11 53) x0_ack!487))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!485) ((_ to_fp 11 53) x1_ack!483)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!486) ((_ to_fp 11 53) y0_ack!484))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!486) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!486)
          ((_ to_fp 11 53) y0_ack!484))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!484))))

(check-sat)
(exit)
