(declare-fun x1_ack!947 () (_ BitVec 64))
(declare-fun x0_ack!951 () (_ BitVec 64))
(declare-fun x2_ack!948 () (_ BitVec 64))
(declare-fun b_ack!950 () (_ BitVec 64))
(declare-fun a_ack!949 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!951) ((_ to_fp 11 53) x1_ack!947)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!947) ((_ to_fp 11 53) x2_ack!948)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!947)
                       ((_ to_fp 11 53) x0_ack!951))
               ((_ to_fp 11 53) x0_ack!951))
       ((_ to_fp 11 53) x1_ack!947)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!947)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!947)
                       ((_ to_fp 11 53) x0_ack!951)))
       ((_ to_fp 11 53) x0_ack!951)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!948)
                       ((_ to_fp 11 53) x1_ack!947))
               ((_ to_fp 11 53) x1_ack!947))
       ((_ to_fp 11 53) x2_ack!948)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!948)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!948)
                       ((_ to_fp 11 53) x1_ack!947)))
       ((_ to_fp 11 53) x1_ack!947)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!947)
                    ((_ to_fp 11 53) x0_ack!951))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!948)
                    ((_ to_fp 11 53) x1_ack!947))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!949) ((_ to_fp 11 53) b_ack!950))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!949) ((_ to_fp 11 53) x0_ack!951))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!950) ((_ to_fp 11 53) x2_ack!948))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!949) ((_ to_fp 11 53) b_ack!950))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!949) ((_ to_fp 11 53) x0_ack!951))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!949) ((_ to_fp 11 53) x1_ack!947))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!950) ((_ to_fp 11 53) x0_ack!951))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!950) ((_ to_fp 11 53) x1_ack!947)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!947) ((_ to_fp 11 53) b_ack!950))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!947)
                    ((_ to_fp 11 53) x0_ack!951))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
