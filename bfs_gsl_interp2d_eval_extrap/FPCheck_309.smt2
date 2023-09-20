(declare-fun x1_ack!3260 () (_ BitVec 64))
(declare-fun x0_ack!3264 () (_ BitVec 64))
(declare-fun y0_ack!3261 () (_ BitVec 64))
(declare-fun x_ack!3262 () (_ BitVec 64))
(declare-fun y_ack!3263 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3264) ((_ to_fp 11 53) x1_ack!3260))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3261) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3262) ((_ to_fp 11 53) x0_ack!3264))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3262) ((_ to_fp 11 53) x1_ack!3260))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3263) ((_ to_fp 11 53) y0_ack!3261))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3263) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3260)
                       ((_ to_fp 11 53) x0_ack!3264))
               ((_ to_fp 11 53) x0_ack!3264))
       ((_ to_fp 11 53) x1_ack!3260)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3260)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3260)
                       ((_ to_fp 11 53) x0_ack!3264)))
       ((_ to_fp 11 53) x0_ack!3264)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3261))
               ((_ to_fp 11 53) y0_ack!3261))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3261)))
       ((_ to_fp 11 53) y0_ack!3261)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3263)
                       ((_ to_fp 11 53) y0_ack!3261))
               ((_ to_fp 11 53) y0_ack!3261))
       ((_ to_fp 11 53) y_ack!3263)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3263)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3263)
                       ((_ to_fp 11 53) y0_ack!3261)))
       ((_ to_fp 11 53) y0_ack!3261)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!3262)
                  ((_ to_fp 11 53) x0_ack!3264))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3260)
                  ((_ to_fp 11 53) x0_ack!3264)))))

(check-sat)
(exit)
