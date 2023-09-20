(declare-fun x1_ack!3295 () (_ BitVec 64))
(declare-fun x0_ack!3299 () (_ BitVec 64))
(declare-fun y0_ack!3296 () (_ BitVec 64))
(declare-fun x_ack!3297 () (_ BitVec 64))
(declare-fun y_ack!3298 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3299) ((_ to_fp 11 53) x1_ack!3295))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3296) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3297) ((_ to_fp 11 53) x0_ack!3299))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3297) ((_ to_fp 11 53) x1_ack!3295))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3298) ((_ to_fp 11 53) y0_ack!3296))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3298) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3295)
                       ((_ to_fp 11 53) x0_ack!3299))
               ((_ to_fp 11 53) x0_ack!3299))
       ((_ to_fp 11 53) x1_ack!3295)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3295)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3295)
                       ((_ to_fp 11 53) x0_ack!3299)))
       ((_ to_fp 11 53) x0_ack!3299)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3296))
               ((_ to_fp 11 53) y0_ack!3296))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3296)))
       ((_ to_fp 11 53) y0_ack!3296)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3298)
                       ((_ to_fp 11 53) y0_ack!3296))
               ((_ to_fp 11 53) y0_ack!3296))
       ((_ to_fp 11 53) y_ack!3298)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3298)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3298)
                       ((_ to_fp 11 53) y0_ack!3296)))
       ((_ to_fp 11 53) y0_ack!3296)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!3298)
                  ((_ to_fp 11 53) y0_ack!3296))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!3296)))))

(check-sat)
(exit)
