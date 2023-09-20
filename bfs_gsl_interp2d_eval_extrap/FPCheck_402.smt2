(declare-fun x1_ack!4361 () (_ BitVec 64))
(declare-fun x0_ack!4365 () (_ BitVec 64))
(declare-fun y0_ack!4362 () (_ BitVec 64))
(declare-fun x_ack!4363 () (_ BitVec 64))
(declare-fun y_ack!4364 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4365) ((_ to_fp 11 53) x1_ack!4361))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4362) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4363) ((_ to_fp 11 53) x0_ack!4365)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4364) ((_ to_fp 11 53) y0_ack!4362))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4364) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4361)
                       ((_ to_fp 11 53) x0_ack!4365))
               ((_ to_fp 11 53) x0_ack!4365))
       ((_ to_fp 11 53) x1_ack!4361)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4361)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4361)
                       ((_ to_fp 11 53) x0_ack!4365)))
       ((_ to_fp 11 53) x0_ack!4365)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4362))
               ((_ to_fp 11 53) y0_ack!4362))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4362)))
       ((_ to_fp 11 53) y0_ack!4362)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4363)
                       ((_ to_fp 11 53) x0_ack!4365))
               ((_ to_fp 11 53) x0_ack!4365))
       ((_ to_fp 11 53) x_ack!4363)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4363)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4363)
                       ((_ to_fp 11 53) x0_ack!4365)))
       ((_ to_fp 11 53) x0_ack!4365)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!4363)
                  ((_ to_fp 11 53) x0_ack!4365))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4361)
                  ((_ to_fp 11 53) x0_ack!4365)))))

(check-sat)
(exit)
