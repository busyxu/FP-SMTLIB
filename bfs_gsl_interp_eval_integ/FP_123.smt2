(declare-fun x1_ack!7209 () (_ BitVec 64))
(declare-fun x0_ack!7213 () (_ BitVec 64))
(declare-fun x2_ack!7210 () (_ BitVec 64))
(declare-fun b_ack!7212 () (_ BitVec 64))
(declare-fun a_ack!7211 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7213) ((_ to_fp 11 53) x1_ack!7209)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7209) ((_ to_fp 11 53) x2_ack!7210)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7209)
                       ((_ to_fp 11 53) x0_ack!7213))
               ((_ to_fp 11 53) x0_ack!7213))
       ((_ to_fp 11 53) x1_ack!7209)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7209)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7209)
                       ((_ to_fp 11 53) x0_ack!7213)))
       ((_ to_fp 11 53) x0_ack!7213)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7210)
                       ((_ to_fp 11 53) x1_ack!7209))
               ((_ to_fp 11 53) x1_ack!7209))
       ((_ to_fp 11 53) x2_ack!7210)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7210)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7210)
                       ((_ to_fp 11 53) x1_ack!7209)))
       ((_ to_fp 11 53) x1_ack!7209)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7209)
                    ((_ to_fp 11 53) x0_ack!7213))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7210)
                    ((_ to_fp 11 53) x1_ack!7209))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7211) ((_ to_fp 11 53) b_ack!7212))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7211) ((_ to_fp 11 53) x0_ack!7213))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7212) ((_ to_fp 11 53) x2_ack!7210))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7211) ((_ to_fp 11 53) b_ack!7212))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7211) ((_ to_fp 11 53) x0_ack!7213))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7211) ((_ to_fp 11 53) x1_ack!7209))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7212) ((_ to_fp 11 53) x0_ack!7213))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7212) ((_ to_fp 11 53) x1_ack!7209)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7209) ((_ to_fp 11 53) b_ack!7212))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7209)
                    ((_ to_fp 11 53) x0_ack!7213))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7210)
                    ((_ to_fp 11 53) x1_ack!7209))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
