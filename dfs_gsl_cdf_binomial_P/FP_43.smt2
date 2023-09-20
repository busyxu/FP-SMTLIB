(declare-fun p_ack!3182 () (_ BitVec 64))
(declare-fun k_ack!3180 () (_ BitVec 32))
(declare-fun n_ack!3181 () (_ BitVec 32))
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!3182) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!3182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!3181 k_ack!3180)))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!3182) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!3182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!3182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!3182) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3181)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3181)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3181)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3181)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3181)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180)))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180)
               ((_ to_fp 11 53) #x3ff0000000000000))
       (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!3181)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp_unsigned 11 53)
                         roundNearestTiesToEven
                         k_ack!3180)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp_unsigned 11 53)
                         roundNearestTiesToEven
                         n_ack!3181)
                       ((_ to_fp_unsigned 11 53)
                         roundNearestTiesToEven
                         k_ack!3180)))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!3180)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
