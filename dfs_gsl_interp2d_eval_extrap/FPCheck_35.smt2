(declare-fun x1_ack!348 () (_ BitVec 64))
(declare-fun x0_ack!352 () (_ BitVec 64))
(declare-fun y0_ack!349 () (_ BitVec 64))
(declare-fun x_ack!350 () (_ BitVec 64))
(declare-fun y_ack!351 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!352) ((_ to_fp 11 53) x1_ack!348))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!349) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!350) ((_ to_fp 11 53) x0_ack!352))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!350) ((_ to_fp 11 53) x1_ack!348))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!351) ((_ to_fp 11 53) y0_ack!349))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!351) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!348)
                       ((_ to_fp 11 53) x0_ack!352))
               ((_ to_fp 11 53) x0_ack!352))
       ((_ to_fp 11 53) x1_ack!348)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!348)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!348)
                       ((_ to_fp 11 53) x0_ack!352)))
       ((_ to_fp 11 53) x0_ack!352)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!349))
               ((_ to_fp 11 53) y0_ack!349))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!349)))
       ((_ to_fp 11 53) y0_ack!349)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!351)
                       ((_ to_fp 11 53) y0_ack!349))
               ((_ to_fp 11 53) y0_ack!349))
       ((_ to_fp 11 53) y_ack!351)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!351)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!351)
                       ((_ to_fp 11 53) y0_ack!349)))
       ((_ to_fp 11 53) y0_ack!349)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!351)
                  ((_ to_fp 11 53) y0_ack!349))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!349)))))

(check-sat)
(exit)
