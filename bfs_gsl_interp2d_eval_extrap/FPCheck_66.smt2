(declare-fun x1_ack!639 () (_ BitVec 64))
(declare-fun x0_ack!643 () (_ BitVec 64))
(declare-fun y0_ack!640 () (_ BitVec 64))
(declare-fun x_ack!641 () (_ BitVec 64))
(declare-fun y_ack!642 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!643) ((_ to_fp 11 53) x1_ack!639))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!640) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!641) ((_ to_fp 11 53) x0_ack!643))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!641) ((_ to_fp 11 53) x1_ack!639)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!642) ((_ to_fp 11 53) y0_ack!640))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!642) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!642)
                  ((_ to_fp 11 53) y0_ack!640))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!640)))))

(check-sat)
(exit)
