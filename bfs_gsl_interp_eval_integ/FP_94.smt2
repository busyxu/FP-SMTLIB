(declare-fun x1_ack!5111 () (_ BitVec 64))
(declare-fun x0_ack!5115 () (_ BitVec 64))
(declare-fun x2_ack!5112 () (_ BitVec 64))
(declare-fun b_ack!5114 () (_ BitVec 64))
(declare-fun a_ack!5113 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5115) ((_ to_fp 11 53) x1_ack!5111)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5111) ((_ to_fp 11 53) x2_ack!5112)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5111)
                       ((_ to_fp 11 53) x0_ack!5115))
               ((_ to_fp 11 53) x0_ack!5115))
       ((_ to_fp 11 53) x1_ack!5111)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5111)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5111)
                       ((_ to_fp 11 53) x0_ack!5115)))
       ((_ to_fp 11 53) x0_ack!5115)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5112)
                       ((_ to_fp 11 53) x1_ack!5111))
               ((_ to_fp 11 53) x1_ack!5111))
       ((_ to_fp 11 53) x2_ack!5112)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5112)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5112)
                       ((_ to_fp 11 53) x1_ack!5111)))
       ((_ to_fp 11 53) x1_ack!5111)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5111)
                    ((_ to_fp 11 53) x0_ack!5115))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5112)
                    ((_ to_fp 11 53) x1_ack!5111))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5113) ((_ to_fp 11 53) b_ack!5114))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5113) ((_ to_fp 11 53) x0_ack!5115))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5114) ((_ to_fp 11 53) x2_ack!5112))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5113) ((_ to_fp 11 53) b_ack!5114))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5113) ((_ to_fp 11 53) x0_ack!5115))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5113) ((_ to_fp 11 53) x1_ack!5111)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5111) ((_ to_fp 11 53) a_ack!5113))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5114) ((_ to_fp 11 53) x1_ack!5111))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5114) ((_ to_fp 11 53) x2_ack!5112)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5112)
                    ((_ to_fp 11 53) x1_ack!5111))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5113)
                       ((_ to_fp 11 53) x1_ack!5111))
               ((_ to_fp 11 53) x1_ack!5111))
       ((_ to_fp 11 53) a_ack!5113)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5113)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5113)
                       ((_ to_fp 11 53) x1_ack!5111)))
       ((_ to_fp 11 53) x1_ack!5111)))

(check-sat)
(exit)
