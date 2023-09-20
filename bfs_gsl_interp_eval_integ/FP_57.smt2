(declare-fun x1_ack!2758 () (_ BitVec 64))
(declare-fun x0_ack!2762 () (_ BitVec 64))
(declare-fun x2_ack!2759 () (_ BitVec 64))
(declare-fun b_ack!2761 () (_ BitVec 64))
(declare-fun a_ack!2760 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2762) ((_ to_fp 11 53) x1_ack!2758)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2758) ((_ to_fp 11 53) x2_ack!2759)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2758)
                       ((_ to_fp 11 53) x0_ack!2762))
               ((_ to_fp 11 53) x0_ack!2762))
       ((_ to_fp 11 53) x1_ack!2758)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2758)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2758)
                       ((_ to_fp 11 53) x0_ack!2762)))
       ((_ to_fp 11 53) x0_ack!2762)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2759)
                       ((_ to_fp 11 53) x1_ack!2758))
               ((_ to_fp 11 53) x1_ack!2758))
       ((_ to_fp 11 53) x2_ack!2759)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2759)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2759)
                       ((_ to_fp 11 53) x1_ack!2758)))
       ((_ to_fp 11 53) x1_ack!2758)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2758)
                    ((_ to_fp 11 53) x0_ack!2762))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2759)
                    ((_ to_fp 11 53) x1_ack!2758))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2760) ((_ to_fp 11 53) b_ack!2761))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2760) ((_ to_fp 11 53) x0_ack!2762))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2761) ((_ to_fp 11 53) x2_ack!2759))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2760) ((_ to_fp 11 53) b_ack!2761))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2760) ((_ to_fp 11 53) x0_ack!2762))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2760) ((_ to_fp 11 53) x1_ack!2758)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2758) ((_ to_fp 11 53) a_ack!2760))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2761) ((_ to_fp 11 53) x1_ack!2758))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2761) ((_ to_fp 11 53) x2_ack!2759))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2759)
                    ((_ to_fp 11 53) x1_ack!2758))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
