(declare-fun x1_ack!4351 () (_ BitVec 64))
(declare-fun x0_ack!4355 () (_ BitVec 64))
(declare-fun y0_ack!4352 () (_ BitVec 64))
(declare-fun x_ack!4353 () (_ BitVec 64))
(declare-fun y_ack!4354 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4355) ((_ to_fp 11 53) x1_ack!4351))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4352) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4353) ((_ to_fp 11 53) x0_ack!4355)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4354) ((_ to_fp 11 53) y0_ack!4352))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4354) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4351)
                       ((_ to_fp 11 53) x0_ack!4355))
               ((_ to_fp 11 53) x0_ack!4355))
       ((_ to_fp 11 53) x1_ack!4351)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4351)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4351)
                       ((_ to_fp 11 53) x0_ack!4355)))
       ((_ to_fp 11 53) x0_ack!4355)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4352))
               ((_ to_fp 11 53) y0_ack!4352))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4352)))
       ((_ to_fp 11 53) y0_ack!4352)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4353)
                       ((_ to_fp 11 53) x0_ack!4355))
               ((_ to_fp 11 53) x0_ack!4355))
       ((_ to_fp 11 53) x_ack!4353)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4353)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4353)
                       ((_ to_fp 11 53) x0_ack!4355)))
       ((_ to_fp 11 53) x0_ack!4355)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!4353)
                  ((_ to_fp 11 53) x0_ack!4355))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4351)
                  ((_ to_fp 11 53) x0_ack!4355)))))

(check-sat)
(exit)
