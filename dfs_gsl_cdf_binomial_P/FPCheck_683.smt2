(declare-fun p_ack!2855 () (_ BitVec 64))
(declare-fun k_ack!2853 () (_ BitVec 32))
(declare-fun n_ack!2854 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!2855) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!2855) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!2854 k_ack!2853)))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!2855) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!2855) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!2855) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!2855) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2854)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2854)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2854)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2854)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2854)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
               ((_ to_fp 11 53) #x3ff0000000000000))
       (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2854)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp_unsigned 11 53)
                         roundNearestTiesToEven
                         k_ack!2853)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp_unsigned 11 53)
                         roundNearestTiesToEven
                         n_ack!2854)
                       ((_ to_fp_unsigned 11 53)
                         roundNearestTiesToEven
                         k_ack!2853)))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp_unsigned 11 53)
                       roundNearestTiesToEven
                       k_ack!2853)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x40c0000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x4330000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2853)
                  ((_ to_fp 11 53) #x3ff0000000000000)))
  #x4038000000000000))

(check-sat)
(exit)
