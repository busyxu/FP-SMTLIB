(declare-fun x1_ack!2383 () (_ BitVec 64))
(declare-fun x0_ack!2387 () (_ BitVec 64))
(declare-fun x2_ack!2384 () (_ BitVec 64))
(declare-fun b_ack!2386 () (_ BitVec 64))
(declare-fun a_ack!2385 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2387) ((_ to_fp 11 53) x1_ack!2383)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2383) ((_ to_fp 11 53) x2_ack!2384)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2383)
                       ((_ to_fp 11 53) x0_ack!2387))
               ((_ to_fp 11 53) x0_ack!2387))
       ((_ to_fp 11 53) x1_ack!2383)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2383)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2383)
                       ((_ to_fp 11 53) x0_ack!2387)))
       ((_ to_fp 11 53) x0_ack!2387)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2384)
                       ((_ to_fp 11 53) x1_ack!2383))
               ((_ to_fp 11 53) x1_ack!2383))
       ((_ to_fp 11 53) x2_ack!2384)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2384)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2384)
                       ((_ to_fp 11 53) x1_ack!2383)))
       ((_ to_fp 11 53) x1_ack!2383)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2383)
                    ((_ to_fp 11 53) x0_ack!2387))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2384)
                    ((_ to_fp 11 53) x1_ack!2383))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2385) ((_ to_fp 11 53) b_ack!2386))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2385) ((_ to_fp 11 53) x0_ack!2387))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2386) ((_ to_fp 11 53) x2_ack!2384))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2385) ((_ to_fp 11 53) b_ack!2386))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2385) ((_ to_fp 11 53) x0_ack!2387))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2385) ((_ to_fp 11 53) x1_ack!2383))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2386) ((_ to_fp 11 53) x0_ack!2387))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2386) ((_ to_fp 11 53) x1_ack!2383)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2383) ((_ to_fp 11 53) b_ack!2386))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2383)
                    ((_ to_fp 11 53) x0_ack!2387))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2384)
                    ((_ to_fp 11 53) x1_ack!2383))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
