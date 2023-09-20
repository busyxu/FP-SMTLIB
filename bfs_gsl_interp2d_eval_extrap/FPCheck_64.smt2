(declare-fun x1_ack!619 () (_ BitVec 64))
(declare-fun x0_ack!623 () (_ BitVec 64))
(declare-fun y0_ack!620 () (_ BitVec 64))
(declare-fun x_ack!621 () (_ BitVec 64))
(declare-fun y_ack!622 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!623) ((_ to_fp 11 53) x1_ack!619))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!620) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!621) ((_ to_fp 11 53) x0_ack!623))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!621) ((_ to_fp 11 53) x1_ack!619)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!622) ((_ to_fp 11 53) y0_ack!620))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!622) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!622)
                  ((_ to_fp 11 53) y0_ack!620))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!620)))))

(check-sat)
(exit)
