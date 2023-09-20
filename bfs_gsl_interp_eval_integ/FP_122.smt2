(declare-fun x1_ack!7108 () (_ BitVec 64))
(declare-fun x0_ack!7112 () (_ BitVec 64))
(declare-fun x2_ack!7109 () (_ BitVec 64))
(declare-fun b_ack!7111 () (_ BitVec 64))
(declare-fun a_ack!7110 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7112) ((_ to_fp 11 53) x1_ack!7108)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7108) ((_ to_fp 11 53) x2_ack!7109)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7108)
                       ((_ to_fp 11 53) x0_ack!7112))
               ((_ to_fp 11 53) x0_ack!7112))
       ((_ to_fp 11 53) x1_ack!7108)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7108)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7108)
                       ((_ to_fp 11 53) x0_ack!7112)))
       ((_ to_fp 11 53) x0_ack!7112)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7109)
                       ((_ to_fp 11 53) x1_ack!7108))
               ((_ to_fp 11 53) x1_ack!7108))
       ((_ to_fp 11 53) x2_ack!7109)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7109)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7109)
                       ((_ to_fp 11 53) x1_ack!7108)))
       ((_ to_fp 11 53) x1_ack!7108)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7108)
                    ((_ to_fp 11 53) x0_ack!7112))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7109)
                    ((_ to_fp 11 53) x1_ack!7108))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7110) ((_ to_fp 11 53) b_ack!7111))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7110) ((_ to_fp 11 53) x0_ack!7112))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7111) ((_ to_fp 11 53) x2_ack!7109))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7110) ((_ to_fp 11 53) b_ack!7111))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7110) ((_ to_fp 11 53) x0_ack!7112))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7110) ((_ to_fp 11 53) x1_ack!7108))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7111) ((_ to_fp 11 53) x0_ack!7112))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7111) ((_ to_fp 11 53) x1_ack!7108)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7108) ((_ to_fp 11 53) b_ack!7111))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7108)
                    ((_ to_fp 11 53) x0_ack!7112))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7109)
                    ((_ to_fp 11 53) x1_ack!7108))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
