(declare-fun x1_ack!263 () (_ BitVec 64))
(declare-fun x0_ack!267 () (_ BitVec 64))
(declare-fun y0_ack!264 () (_ BitVec 64))
(declare-fun x_ack!265 () (_ BitVec 64))
(declare-fun y_ack!266 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!267) ((_ to_fp 11 53) x1_ack!263))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!264) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!265) ((_ to_fp 11 53) x0_ack!267))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!265) ((_ to_fp 11 53) x1_ack!263))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!266) ((_ to_fp 11 53) y0_ack!264))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!266) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!265) ((_ to_fp 11 53) x0_ack!267))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!265) ((_ to_fp 11 53) x1_ack!263))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!266) ((_ to_fp 11 53) y0_ack!264))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!266) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!266)
                  ((_ to_fp 11 53) y0_ack!264))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!264)))))

(check-sat)
(exit)
