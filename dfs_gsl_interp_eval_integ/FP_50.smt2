(declare-fun x1_ack!2486 () (_ BitVec 64))
(declare-fun x0_ack!2490 () (_ BitVec 64))
(declare-fun x2_ack!2487 () (_ BitVec 64))
(declare-fun b_ack!2489 () (_ BitVec 64))
(declare-fun a_ack!2488 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2490) ((_ to_fp 11 53) x1_ack!2486)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2486) ((_ to_fp 11 53) x2_ack!2487)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2486)
                       ((_ to_fp 11 53) x0_ack!2490))
               ((_ to_fp 11 53) x0_ack!2490))
       ((_ to_fp 11 53) x1_ack!2486)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2486)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2486)
                       ((_ to_fp 11 53) x0_ack!2490)))
       ((_ to_fp 11 53) x0_ack!2490)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2487)
                       ((_ to_fp 11 53) x1_ack!2486))
               ((_ to_fp 11 53) x1_ack!2486))
       ((_ to_fp 11 53) x2_ack!2487)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2487)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2487)
                       ((_ to_fp 11 53) x1_ack!2486)))
       ((_ to_fp 11 53) x1_ack!2486)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2486)
                    ((_ to_fp 11 53) x0_ack!2490))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2487)
                    ((_ to_fp 11 53) x1_ack!2486))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2488) ((_ to_fp 11 53) b_ack!2489))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2488) ((_ to_fp 11 53) x0_ack!2490))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2489) ((_ to_fp 11 53) x2_ack!2487))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2488) ((_ to_fp 11 53) b_ack!2489))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2488) ((_ to_fp 11 53) x0_ack!2490))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2488) ((_ to_fp 11 53) x1_ack!2486))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2489) ((_ to_fp 11 53) x0_ack!2490))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2489) ((_ to_fp 11 53) x1_ack!2486)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2486) ((_ to_fp 11 53) b_ack!2489))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2486)
                    ((_ to_fp 11 53) x0_ack!2490))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2487)
                    ((_ to_fp 11 53) x1_ack!2486))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
