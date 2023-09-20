(declare-fun x1_ack!2254 () (_ BitVec 64))
(declare-fun x0_ack!2258 () (_ BitVec 64))
(declare-fun x2_ack!2255 () (_ BitVec 64))
(declare-fun b_ack!2257 () (_ BitVec 64))
(declare-fun a_ack!2256 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2258) ((_ to_fp 11 53) x1_ack!2254)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2254) ((_ to_fp 11 53) x2_ack!2255)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2254)
                       ((_ to_fp 11 53) x0_ack!2258))
               ((_ to_fp 11 53) x0_ack!2258))
       ((_ to_fp 11 53) x1_ack!2254)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2254)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2254)
                       ((_ to_fp 11 53) x0_ack!2258)))
       ((_ to_fp 11 53) x0_ack!2258)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2255)
                       ((_ to_fp 11 53) x1_ack!2254))
               ((_ to_fp 11 53) x1_ack!2254))
       ((_ to_fp 11 53) x2_ack!2255)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2255)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2255)
                       ((_ to_fp 11 53) x1_ack!2254)))
       ((_ to_fp 11 53) x1_ack!2254)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2254)
                    ((_ to_fp 11 53) x0_ack!2258))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2255)
                    ((_ to_fp 11 53) x1_ack!2254))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2256) ((_ to_fp 11 53) b_ack!2257))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2256) ((_ to_fp 11 53) x0_ack!2258))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2257) ((_ to_fp 11 53) x2_ack!2255))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2256) ((_ to_fp 11 53) b_ack!2257))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2256) ((_ to_fp 11 53) x0_ack!2258))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2256) ((_ to_fp 11 53) x1_ack!2254)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2254) ((_ to_fp 11 53) a_ack!2256))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2257) ((_ to_fp 11 53) x1_ack!2254))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2257) ((_ to_fp 11 53) x2_ack!2255))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2255)
                    ((_ to_fp 11 53) x1_ack!2254))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
