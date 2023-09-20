(declare-fun x1_ack!2237 () (_ BitVec 64))
(declare-fun x0_ack!2241 () (_ BitVec 64))
(declare-fun x2_ack!2238 () (_ BitVec 64))
(declare-fun b_ack!2240 () (_ BitVec 64))
(declare-fun a_ack!2239 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2241) ((_ to_fp 11 53) x1_ack!2237)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2237) ((_ to_fp 11 53) x2_ack!2238)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2237)
                       ((_ to_fp 11 53) x0_ack!2241))
               ((_ to_fp 11 53) x0_ack!2241))
       ((_ to_fp 11 53) x1_ack!2237)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2237)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2237)
                       ((_ to_fp 11 53) x0_ack!2241)))
       ((_ to_fp 11 53) x0_ack!2241)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2238)
                       ((_ to_fp 11 53) x1_ack!2237))
               ((_ to_fp 11 53) x1_ack!2237))
       ((_ to_fp 11 53) x2_ack!2238)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2238)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2238)
                       ((_ to_fp 11 53) x1_ack!2237)))
       ((_ to_fp 11 53) x1_ack!2237)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2237)
                    ((_ to_fp 11 53) x0_ack!2241))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2238)
                    ((_ to_fp 11 53) x1_ack!2237))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2239) ((_ to_fp 11 53) b_ack!2240))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2239) ((_ to_fp 11 53) x0_ack!2241))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2240) ((_ to_fp 11 53) x2_ack!2238))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2239) ((_ to_fp 11 53) b_ack!2240))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2239) ((_ to_fp 11 53) x0_ack!2241))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2239) ((_ to_fp 11 53) x1_ack!2237))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2240) ((_ to_fp 11 53) x0_ack!2241))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2240) ((_ to_fp 11 53) x1_ack!2237)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2237) ((_ to_fp 11 53) b_ack!2240))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2237)
                    ((_ to_fp 11 53) x0_ack!2241))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2238)
                    ((_ to_fp 11 53) x1_ack!2237))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!2240 x1_ack!2237))

(check-sat)
(exit)
