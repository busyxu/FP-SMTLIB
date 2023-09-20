(declare-fun x1_ack!2247 () (_ BitVec 64))
(declare-fun x0_ack!2251 () (_ BitVec 64))
(declare-fun x2_ack!2248 () (_ BitVec 64))
(declare-fun b_ack!2250 () (_ BitVec 64))
(declare-fun a_ack!2249 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2251) ((_ to_fp 11 53) x1_ack!2247)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2247) ((_ to_fp 11 53) x2_ack!2248)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2247)
                       ((_ to_fp 11 53) x0_ack!2251))
               ((_ to_fp 11 53) x0_ack!2251))
       ((_ to_fp 11 53) x1_ack!2247)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2247)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2247)
                       ((_ to_fp 11 53) x0_ack!2251)))
       ((_ to_fp 11 53) x0_ack!2251)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2248)
                       ((_ to_fp 11 53) x1_ack!2247))
               ((_ to_fp 11 53) x1_ack!2247))
       ((_ to_fp 11 53) x2_ack!2248)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2248)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2248)
                       ((_ to_fp 11 53) x1_ack!2247)))
       ((_ to_fp 11 53) x1_ack!2247)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2247)
                    ((_ to_fp 11 53) x0_ack!2251))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2248)
                    ((_ to_fp 11 53) x1_ack!2247))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2249) ((_ to_fp 11 53) b_ack!2250))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2249) ((_ to_fp 11 53) x0_ack!2251))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2250) ((_ to_fp 11 53) x2_ack!2248))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2249) ((_ to_fp 11 53) b_ack!2250))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2249) ((_ to_fp 11 53) x0_ack!2251))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2249) ((_ to_fp 11 53) x1_ack!2247))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2250) ((_ to_fp 11 53) x0_ack!2251))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2250) ((_ to_fp 11 53) x1_ack!2247)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2247) ((_ to_fp 11 53) b_ack!2250))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2247)
                    ((_ to_fp 11 53) x0_ack!2251))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2248)
                    ((_ to_fp 11 53) x1_ack!2247))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!2250 x1_ack!2247))

(check-sat)
(exit)
