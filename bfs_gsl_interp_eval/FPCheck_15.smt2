(declare-fun x1_ack!109 () (_ BitVec 64))
(declare-fun x0_ack!111 () (_ BitVec 64))
(declare-fun x2_ack!110 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!111) ((_ to_fp 11 53) x1_ack!109)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!109) ((_ to_fp 11 53) x2_ack!110)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!109)
                       ((_ to_fp 11 53) x0_ack!111))
               ((_ to_fp 11 53) x0_ack!111))
       ((_ to_fp 11 53) x1_ack!109)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!109)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!109)
                       ((_ to_fp 11 53) x0_ack!111)))
       ((_ to_fp 11 53) x0_ack!111)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!110)
                       ((_ to_fp 11 53) x1_ack!109))
               ((_ to_fp 11 53) x1_ack!109))
       ((_ to_fp 11 53) x2_ack!110)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!110)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!110)
                       ((_ to_fp 11 53) x1_ack!109)))
       ((_ to_fp 11 53) x1_ack!109)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!109)
                    ((_ to_fp 11 53) x0_ack!111))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!109)
               ((_ to_fp 11 53) x0_ack!111))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
