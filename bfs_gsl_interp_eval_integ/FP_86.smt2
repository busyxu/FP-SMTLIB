(declare-fun x1_ack!4674 () (_ BitVec 64))
(declare-fun x0_ack!4678 () (_ BitVec 64))
(declare-fun x2_ack!4675 () (_ BitVec 64))
(declare-fun b_ack!4677 () (_ BitVec 64))
(declare-fun a_ack!4676 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4678) ((_ to_fp 11 53) x1_ack!4674)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4674) ((_ to_fp 11 53) x2_ack!4675)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4674)
                       ((_ to_fp 11 53) x0_ack!4678))
               ((_ to_fp 11 53) x0_ack!4678))
       ((_ to_fp 11 53) x1_ack!4674)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4674)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4674)
                       ((_ to_fp 11 53) x0_ack!4678)))
       ((_ to_fp 11 53) x0_ack!4678)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4675)
                       ((_ to_fp 11 53) x1_ack!4674))
               ((_ to_fp 11 53) x1_ack!4674))
       ((_ to_fp 11 53) x2_ack!4675)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4675)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4675)
                       ((_ to_fp 11 53) x1_ack!4674)))
       ((_ to_fp 11 53) x1_ack!4674)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4674)
                    ((_ to_fp 11 53) x0_ack!4678))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4675)
                    ((_ to_fp 11 53) x1_ack!4674))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4676) ((_ to_fp 11 53) b_ack!4677))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4676) ((_ to_fp 11 53) x0_ack!4678))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4677) ((_ to_fp 11 53) x2_ack!4675))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4676) ((_ to_fp 11 53) b_ack!4677))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4676) ((_ to_fp 11 53) x0_ack!4678))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4676) ((_ to_fp 11 53) x1_ack!4674))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4677) ((_ to_fp 11 53) x0_ack!4678))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4677) ((_ to_fp 11 53) x1_ack!4674))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4674)
                    ((_ to_fp 11 53) x0_ack!4678))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
