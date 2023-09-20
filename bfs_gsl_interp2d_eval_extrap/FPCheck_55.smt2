(declare-fun x1_ack!518 () (_ BitVec 64))
(declare-fun x0_ack!522 () (_ BitVec 64))
(declare-fun y0_ack!519 () (_ BitVec 64))
(declare-fun x_ack!520 () (_ BitVec 64))
(declare-fun y_ack!521 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!522) ((_ to_fp 11 53) x1_ack!518))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!519) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!520) ((_ to_fp 11 53) x0_ack!522))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!520) ((_ to_fp 11 53) x1_ack!518)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!521) ((_ to_fp 11 53) y0_ack!519))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!521) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!521)
                  ((_ to_fp 11 53) y0_ack!519))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!519)))))

(check-sat)
(exit)
