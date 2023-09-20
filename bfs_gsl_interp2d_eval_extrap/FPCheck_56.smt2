(declare-fun x1_ack!528 () (_ BitVec 64))
(declare-fun x0_ack!532 () (_ BitVec 64))
(declare-fun y0_ack!529 () (_ BitVec 64))
(declare-fun x_ack!530 () (_ BitVec 64))
(declare-fun y_ack!531 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!532) ((_ to_fp 11 53) x1_ack!528))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!529) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!530) ((_ to_fp 11 53) x0_ack!532))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!530) ((_ to_fp 11 53) x1_ack!528)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!531) ((_ to_fp 11 53) y0_ack!529))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!531) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!531)
                  ((_ to_fp 11 53) y0_ack!529))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!529)))))

(check-sat)
(exit)
