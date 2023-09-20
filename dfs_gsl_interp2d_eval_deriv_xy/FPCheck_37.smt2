(declare-fun x1_ack!431 () (_ BitVec 64))
(declare-fun x0_ack!435 () (_ BitVec 64))
(declare-fun y0_ack!432 () (_ BitVec 64))
(declare-fun x_ack!433 () (_ BitVec 64))
(declare-fun y_ack!434 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!435) ((_ to_fp 11 53) x1_ack!431))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!432) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!433) ((_ to_fp 11 53) x0_ack!435))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!433) ((_ to_fp 11 53) x1_ack!431))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!434) ((_ to_fp 11 53) y0_ack!432))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!434) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!433) ((_ to_fp 11 53) x0_ack!435))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!433) ((_ to_fp 11 53) x1_ack!431))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!434) ((_ to_fp 11 53) y0_ack!432))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!434) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!431)
          ((_ to_fp 11 53) x0_ack!435))))

(check-sat)
(exit)
