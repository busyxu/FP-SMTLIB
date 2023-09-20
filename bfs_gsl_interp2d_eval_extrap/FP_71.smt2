(declare-fun x1_ack!2923 () (_ BitVec 64))
(declare-fun x0_ack!2927 () (_ BitVec 64))
(declare-fun y0_ack!2924 () (_ BitVec 64))
(declare-fun x_ack!2925 () (_ BitVec 64))
(declare-fun y_ack!2926 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2927) ((_ to_fp 11 53) x1_ack!2923))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2924) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2925) ((_ to_fp 11 53) x0_ack!2927))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2925) ((_ to_fp 11 53) x1_ack!2923))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2926) ((_ to_fp 11 53) y0_ack!2924))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2926) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2923)
                       ((_ to_fp 11 53) x0_ack!2927))
               ((_ to_fp 11 53) x0_ack!2927))
       ((_ to_fp 11 53) x1_ack!2923)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2923)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2923)
                       ((_ to_fp 11 53) x0_ack!2927)))
       ((_ to_fp 11 53) x0_ack!2927)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2924))
               ((_ to_fp 11 53) y0_ack!2924))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2924)))
       ((_ to_fp 11 53) y0_ack!2924)))

(check-sat)
(exit)
