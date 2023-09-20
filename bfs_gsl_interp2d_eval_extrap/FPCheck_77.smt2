(declare-fun x1_ack!770 () (_ BitVec 64))
(declare-fun x0_ack!774 () (_ BitVec 64))
(declare-fun y0_ack!771 () (_ BitVec 64))
(declare-fun x_ack!772 () (_ BitVec 64))
(declare-fun y_ack!773 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!774) ((_ to_fp 11 53) x1_ack!770))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!771) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!772) ((_ to_fp 11 53) x0_ack!774))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!772) ((_ to_fp 11 53) x1_ack!770)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!773) ((_ to_fp 11 53) y0_ack!771))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!773) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!772)
                  ((_ to_fp 11 53) x0_ack!774))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!770)
                  ((_ to_fp 11 53) x0_ack!774)))))

(check-sat)
(exit)
