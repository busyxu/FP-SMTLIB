(declare-fun x1_ack!4639 () (_ BitVec 64))
(declare-fun x0_ack!4643 () (_ BitVec 64))
(declare-fun x2_ack!4640 () (_ BitVec 64))
(declare-fun b_ack!4642 () (_ BitVec 64))
(declare-fun a_ack!4641 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4643) ((_ to_fp 11 53) x1_ack!4639)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4639) ((_ to_fp 11 53) x2_ack!4640)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4639)
                       ((_ to_fp 11 53) x0_ack!4643))
               ((_ to_fp 11 53) x0_ack!4643))
       ((_ to_fp 11 53) x1_ack!4639)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4639)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4639)
                       ((_ to_fp 11 53) x0_ack!4643)))
       ((_ to_fp 11 53) x0_ack!4643)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4640)
                       ((_ to_fp 11 53) x1_ack!4639))
               ((_ to_fp 11 53) x1_ack!4639))
       ((_ to_fp 11 53) x2_ack!4640)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4640)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4640)
                       ((_ to_fp 11 53) x1_ack!4639)))
       ((_ to_fp 11 53) x1_ack!4639)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4639)
                    ((_ to_fp 11 53) x0_ack!4643))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4640)
                    ((_ to_fp 11 53) x1_ack!4639))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4641) ((_ to_fp 11 53) b_ack!4642))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4641) ((_ to_fp 11 53) x0_ack!4643))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4642) ((_ to_fp 11 53) x2_ack!4640))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4641) ((_ to_fp 11 53) b_ack!4642))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4641) ((_ to_fp 11 53) x0_ack!4643))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4641) ((_ to_fp 11 53) x1_ack!4639))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4642) ((_ to_fp 11 53) x0_ack!4643))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4642) ((_ to_fp 11 53) x1_ack!4639))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4639)
                    ((_ to_fp 11 53) x0_ack!4643))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
