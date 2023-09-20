(declare-fun x1_ack!5267 () (_ BitVec 64))
(declare-fun x0_ack!5271 () (_ BitVec 64))
(declare-fun x2_ack!5268 () (_ BitVec 64))
(declare-fun b_ack!5270 () (_ BitVec 64))
(declare-fun a_ack!5269 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5271) ((_ to_fp 11 53) x1_ack!5267)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5267) ((_ to_fp 11 53) x2_ack!5268)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5267)
                       ((_ to_fp 11 53) x0_ack!5271))
               ((_ to_fp 11 53) x0_ack!5271))
       ((_ to_fp 11 53) x1_ack!5267)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5267)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5267)
                       ((_ to_fp 11 53) x0_ack!5271)))
       ((_ to_fp 11 53) x0_ack!5271)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5268)
                       ((_ to_fp 11 53) x1_ack!5267))
               ((_ to_fp 11 53) x1_ack!5267))
       ((_ to_fp 11 53) x2_ack!5268)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5268)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5268)
                       ((_ to_fp 11 53) x1_ack!5267)))
       ((_ to_fp 11 53) x1_ack!5267)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5267)
                    ((_ to_fp 11 53) x0_ack!5271))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5268)
                    ((_ to_fp 11 53) x1_ack!5267))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5269) ((_ to_fp 11 53) b_ack!5270))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5269) ((_ to_fp 11 53) x0_ack!5271))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5270) ((_ to_fp 11 53) x2_ack!5268))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5269) ((_ to_fp 11 53) b_ack!5270))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5269) ((_ to_fp 11 53) x0_ack!5271))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5269) ((_ to_fp 11 53) x1_ack!5267)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5267) ((_ to_fp 11 53) a_ack!5269))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5270) ((_ to_fp 11 53) x1_ack!5267))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5270) ((_ to_fp 11 53) x2_ack!5268)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5268)
                    ((_ to_fp 11 53) x1_ack!5267))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5269)
                       ((_ to_fp 11 53) x1_ack!5267))
               ((_ to_fp 11 53) x1_ack!5267))
       ((_ to_fp 11 53) a_ack!5269)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5269)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5269)
                       ((_ to_fp 11 53) x1_ack!5267)))
       ((_ to_fp 11 53) x1_ack!5267)))

(check-sat)
(exit)
