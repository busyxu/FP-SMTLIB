(declare-fun x1_ack!4950 () (_ BitVec 64))
(declare-fun x0_ack!4954 () (_ BitVec 64))
(declare-fun x2_ack!4951 () (_ BitVec 64))
(declare-fun b_ack!4953 () (_ BitVec 64))
(declare-fun a_ack!4952 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4954) ((_ to_fp 11 53) x1_ack!4950)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4950) ((_ to_fp 11 53) x2_ack!4951)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4950)
                       ((_ to_fp 11 53) x0_ack!4954))
               ((_ to_fp 11 53) x0_ack!4954))
       ((_ to_fp 11 53) x1_ack!4950)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4950)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4950)
                       ((_ to_fp 11 53) x0_ack!4954)))
       ((_ to_fp 11 53) x0_ack!4954)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4951)
                       ((_ to_fp 11 53) x1_ack!4950))
               ((_ to_fp 11 53) x1_ack!4950))
       ((_ to_fp 11 53) x2_ack!4951)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4951)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4951)
                       ((_ to_fp 11 53) x1_ack!4950)))
       ((_ to_fp 11 53) x1_ack!4950)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4950)
                    ((_ to_fp 11 53) x0_ack!4954))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4951)
                    ((_ to_fp 11 53) x1_ack!4950))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4952) ((_ to_fp 11 53) b_ack!4953))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4952) ((_ to_fp 11 53) x0_ack!4954))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4953) ((_ to_fp 11 53) x2_ack!4951))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4952) ((_ to_fp 11 53) b_ack!4953))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4952) ((_ to_fp 11 53) x0_ack!4954))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4952) ((_ to_fp 11 53) x1_ack!4950)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4950) ((_ to_fp 11 53) a_ack!4952))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4953) ((_ to_fp 11 53) x1_ack!4950))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4953) ((_ to_fp 11 53) x2_ack!4951)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4951)
                    ((_ to_fp 11 53) x1_ack!4950))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4952)
                       ((_ to_fp 11 53) x1_ack!4950))
               ((_ to_fp 11 53) x1_ack!4950))
       ((_ to_fp 11 53) a_ack!4952)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!4952)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4952)
                       ((_ to_fp 11 53) x1_ack!4950)))
       ((_ to_fp 11 53) x1_ack!4950)))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!4953 x1_ack!4950))

(check-sat)
(exit)
