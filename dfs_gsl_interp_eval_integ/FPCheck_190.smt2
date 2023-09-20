(declare-fun x1_ack!2222 () (_ BitVec 64))
(declare-fun x0_ack!2226 () (_ BitVec 64))
(declare-fun x2_ack!2223 () (_ BitVec 64))
(declare-fun b_ack!2225 () (_ BitVec 64))
(declare-fun a_ack!2224 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2226) ((_ to_fp 11 53) x1_ack!2222)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2222) ((_ to_fp 11 53) x2_ack!2223)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2222)
                       ((_ to_fp 11 53) x0_ack!2226))
               ((_ to_fp 11 53) x0_ack!2226))
       ((_ to_fp 11 53) x1_ack!2222)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2222)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2222)
                       ((_ to_fp 11 53) x0_ack!2226)))
       ((_ to_fp 11 53) x0_ack!2226)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2223)
                       ((_ to_fp 11 53) x1_ack!2222))
               ((_ to_fp 11 53) x1_ack!2222))
       ((_ to_fp 11 53) x2_ack!2223)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2223)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2223)
                       ((_ to_fp 11 53) x1_ack!2222)))
       ((_ to_fp 11 53) x1_ack!2222)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2222)
                    ((_ to_fp 11 53) x0_ack!2226))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2223)
                    ((_ to_fp 11 53) x1_ack!2222))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2224) ((_ to_fp 11 53) b_ack!2225))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2224) ((_ to_fp 11 53) x0_ack!2226))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2225) ((_ to_fp 11 53) x2_ack!2223))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2224) ((_ to_fp 11 53) b_ack!2225))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2224) ((_ to_fp 11 53) x0_ack!2226))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2224) ((_ to_fp 11 53) x1_ack!2222))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2225) ((_ to_fp 11 53) x0_ack!2226))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2225) ((_ to_fp 11 53) x1_ack!2222)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2222) ((_ to_fp 11 53) b_ack!2225))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2222)
                    ((_ to_fp 11 53) x0_ack!2226))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2223)
                    ((_ to_fp 11 53) x1_ack!2222))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!2222 x1_ack!2222))

(check-sat)
(exit)
