(declare-fun x1_ack!4276 () (_ BitVec 64))
(declare-fun x0_ack!4280 () (_ BitVec 64))
(declare-fun y0_ack!4277 () (_ BitVec 64))
(declare-fun x_ack!4278 () (_ BitVec 64))
(declare-fun y_ack!4279 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4280) ((_ to_fp 11 53) x1_ack!4276))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4277) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4278) ((_ to_fp 11 53) x0_ack!4280)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4279) ((_ to_fp 11 53) y0_ack!4277))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4279) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4276)
                       ((_ to_fp 11 53) x0_ack!4280))
               ((_ to_fp 11 53) x0_ack!4280))
       ((_ to_fp 11 53) x1_ack!4276)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4276)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4276)
                       ((_ to_fp 11 53) x0_ack!4280)))
       ((_ to_fp 11 53) x0_ack!4280)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4277))
               ((_ to_fp 11 53) y0_ack!4277))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4277)))
       ((_ to_fp 11 53) y0_ack!4277)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4278)
                       ((_ to_fp 11 53) x0_ack!4280))
               ((_ to_fp 11 53) x0_ack!4280))
       ((_ to_fp 11 53) x_ack!4278)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4278)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4278)
                       ((_ to_fp 11 53) x0_ack!4280)))
       ((_ to_fp 11 53) x0_ack!4280)))
(assert (FPCHECK_FSUB_OVERFLOW y_ack!4279 y0_ack!4277))

(check-sat)
(exit)
