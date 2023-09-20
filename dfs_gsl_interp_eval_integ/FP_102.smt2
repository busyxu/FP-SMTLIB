(declare-fun x1_ack!6096 () (_ BitVec 64))
(declare-fun x0_ack!6100 () (_ BitVec 64))
(declare-fun x2_ack!6097 () (_ BitVec 64))
(declare-fun b_ack!6099 () (_ BitVec 64))
(declare-fun a_ack!6098 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6100) ((_ to_fp 11 53) x1_ack!6096)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6096) ((_ to_fp 11 53) x2_ack!6097)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6096)
                       ((_ to_fp 11 53) x0_ack!6100))
               ((_ to_fp 11 53) x0_ack!6100))
       ((_ to_fp 11 53) x1_ack!6096)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6096)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6096)
                       ((_ to_fp 11 53) x0_ack!6100)))
       ((_ to_fp 11 53) x0_ack!6100)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6097)
                       ((_ to_fp 11 53) x1_ack!6096))
               ((_ to_fp 11 53) x1_ack!6096))
       ((_ to_fp 11 53) x2_ack!6097)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6097)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6097)
                       ((_ to_fp 11 53) x1_ack!6096)))
       ((_ to_fp 11 53) x1_ack!6096)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6096)
                    ((_ to_fp 11 53) x0_ack!6100))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6097)
                    ((_ to_fp 11 53) x1_ack!6096))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6098) ((_ to_fp 11 53) b_ack!6099))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6098) ((_ to_fp 11 53) x0_ack!6100))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6099) ((_ to_fp 11 53) x2_ack!6097))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6098) ((_ to_fp 11 53) b_ack!6099))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6098) ((_ to_fp 11 53) x0_ack!6100))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6098) ((_ to_fp 11 53) x1_ack!6096)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6096) ((_ to_fp 11 53) a_ack!6098))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6099) ((_ to_fp 11 53) x1_ack!6096))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6099) ((_ to_fp 11 53) x2_ack!6097))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6097)
                    ((_ to_fp 11 53) x1_ack!6096))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
