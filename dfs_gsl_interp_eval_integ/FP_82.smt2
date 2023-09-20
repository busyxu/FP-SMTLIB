(declare-fun x1_ack!4529 () (_ BitVec 64))
(declare-fun x0_ack!4533 () (_ BitVec 64))
(declare-fun x2_ack!4530 () (_ BitVec 64))
(declare-fun b_ack!4532 () (_ BitVec 64))
(declare-fun a_ack!4531 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4533) ((_ to_fp 11 53) x1_ack!4529)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4529) ((_ to_fp 11 53) x2_ack!4530)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4529)
                       ((_ to_fp 11 53) x0_ack!4533))
               ((_ to_fp 11 53) x0_ack!4533))
       ((_ to_fp 11 53) x1_ack!4529)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4529)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4529)
                       ((_ to_fp 11 53) x0_ack!4533)))
       ((_ to_fp 11 53) x0_ack!4533)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4530)
                       ((_ to_fp 11 53) x1_ack!4529))
               ((_ to_fp 11 53) x1_ack!4529))
       ((_ to_fp 11 53) x2_ack!4530)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4530)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4530)
                       ((_ to_fp 11 53) x1_ack!4529)))
       ((_ to_fp 11 53) x1_ack!4529)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4529)
                    ((_ to_fp 11 53) x0_ack!4533))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4530)
                    ((_ to_fp 11 53) x1_ack!4529))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4531) ((_ to_fp 11 53) b_ack!4532))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4531) ((_ to_fp 11 53) x0_ack!4533))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4532) ((_ to_fp 11 53) x2_ack!4530))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4531) ((_ to_fp 11 53) b_ack!4532))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4531) ((_ to_fp 11 53) x0_ack!4533))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4531) ((_ to_fp 11 53) x1_ack!4529)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4529) ((_ to_fp 11 53) a_ack!4531))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4532) ((_ to_fp 11 53) x1_ack!4529))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4532) ((_ to_fp 11 53) x2_ack!4530)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4530)
                    ((_ to_fp 11 53) x1_ack!4529))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
