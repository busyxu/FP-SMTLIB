(declare-fun x1_ack!4328 () (_ BitVec 64))
(declare-fun x0_ack!4332 () (_ BitVec 64))
(declare-fun x2_ack!4329 () (_ BitVec 64))
(declare-fun b_ack!4331 () (_ BitVec 64))
(declare-fun a_ack!4330 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4332) ((_ to_fp 11 53) x1_ack!4328)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4328) ((_ to_fp 11 53) x2_ack!4329)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4328)
                       ((_ to_fp 11 53) x0_ack!4332))
               ((_ to_fp 11 53) x0_ack!4332))
       ((_ to_fp 11 53) x1_ack!4328)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4328)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4328)
                       ((_ to_fp 11 53) x0_ack!4332)))
       ((_ to_fp 11 53) x0_ack!4332)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4329)
                       ((_ to_fp 11 53) x1_ack!4328))
               ((_ to_fp 11 53) x1_ack!4328))
       ((_ to_fp 11 53) x2_ack!4329)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4329)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4329)
                       ((_ to_fp 11 53) x1_ack!4328)))
       ((_ to_fp 11 53) x1_ack!4328)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4328)
                    ((_ to_fp 11 53) x0_ack!4332))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4329)
                    ((_ to_fp 11 53) x1_ack!4328))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4330) ((_ to_fp 11 53) b_ack!4331))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4330) ((_ to_fp 11 53) x0_ack!4332))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4331) ((_ to_fp 11 53) x2_ack!4329))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4330) ((_ to_fp 11 53) b_ack!4331))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4330) ((_ to_fp 11 53) x0_ack!4332))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4330) ((_ to_fp 11 53) x1_ack!4328))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4331) ((_ to_fp 11 53) x0_ack!4332))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4331) ((_ to_fp 11 53) x1_ack!4328))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4328)
                    ((_ to_fp 11 53) x0_ack!4332))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
