(declare-fun x1_ack!2464 () (_ BitVec 64))
(declare-fun x0_ack!2468 () (_ BitVec 64))
(declare-fun x2_ack!2465 () (_ BitVec 64))
(declare-fun b_ack!2467 () (_ BitVec 64))
(declare-fun a_ack!2466 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2468) ((_ to_fp 11 53) x1_ack!2464)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2464) ((_ to_fp 11 53) x2_ack!2465)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2464)
                       ((_ to_fp 11 53) x0_ack!2468))
               ((_ to_fp 11 53) x0_ack!2468))
       ((_ to_fp 11 53) x1_ack!2464)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2464)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2464)
                       ((_ to_fp 11 53) x0_ack!2468)))
       ((_ to_fp 11 53) x0_ack!2468)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2465)
                       ((_ to_fp 11 53) x1_ack!2464))
               ((_ to_fp 11 53) x1_ack!2464))
       ((_ to_fp 11 53) x2_ack!2465)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2465)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2465)
                       ((_ to_fp 11 53) x1_ack!2464)))
       ((_ to_fp 11 53) x1_ack!2464)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2464)
                    ((_ to_fp 11 53) x0_ack!2468))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2465)
                    ((_ to_fp 11 53) x1_ack!2464))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2466) ((_ to_fp 11 53) b_ack!2467))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2466) ((_ to_fp 11 53) x0_ack!2468))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2467) ((_ to_fp 11 53) x2_ack!2465))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2466) ((_ to_fp 11 53) b_ack!2467))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2466) ((_ to_fp 11 53) x0_ack!2468))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2466) ((_ to_fp 11 53) x1_ack!2464)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2464) ((_ to_fp 11 53) a_ack!2466))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2467) ((_ to_fp 11 53) x1_ack!2464))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2467) ((_ to_fp 11 53) x2_ack!2465))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2465)
                    ((_ to_fp 11 53) x1_ack!2464))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!2466 x1_ack!2464))

(check-sat)
(exit)
