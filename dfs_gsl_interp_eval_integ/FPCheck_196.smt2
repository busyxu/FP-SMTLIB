(declare-fun x1_ack!2277 () (_ BitVec 64))
(declare-fun x0_ack!2281 () (_ BitVec 64))
(declare-fun x2_ack!2278 () (_ BitVec 64))
(declare-fun b_ack!2280 () (_ BitVec 64))
(declare-fun a_ack!2279 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2281) ((_ to_fp 11 53) x1_ack!2277)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2277) ((_ to_fp 11 53) x2_ack!2278)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2277)
                       ((_ to_fp 11 53) x0_ack!2281))
               ((_ to_fp 11 53) x0_ack!2281))
       ((_ to_fp 11 53) x1_ack!2277)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2277)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2277)
                       ((_ to_fp 11 53) x0_ack!2281)))
       ((_ to_fp 11 53) x0_ack!2281)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2278)
                       ((_ to_fp 11 53) x1_ack!2277))
               ((_ to_fp 11 53) x1_ack!2277))
       ((_ to_fp 11 53) x2_ack!2278)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2278)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2278)
                       ((_ to_fp 11 53) x1_ack!2277)))
       ((_ to_fp 11 53) x1_ack!2277)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2277)
                    ((_ to_fp 11 53) x0_ack!2281))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2278)
                    ((_ to_fp 11 53) x1_ack!2277))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2279) ((_ to_fp 11 53) b_ack!2280))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2279) ((_ to_fp 11 53) x0_ack!2281))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2280) ((_ to_fp 11 53) x2_ack!2278))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2279) ((_ to_fp 11 53) b_ack!2280))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2279) ((_ to_fp 11 53) x0_ack!2281))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2279) ((_ to_fp 11 53) x1_ack!2277))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2280) ((_ to_fp 11 53) x0_ack!2281))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2280) ((_ to_fp 11 53) x1_ack!2277)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2277) ((_ to_fp 11 53) b_ack!2280))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2277)
                    ((_ to_fp 11 53) x0_ack!2281))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2278)
                    ((_ to_fp 11 53) x1_ack!2277))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2277)
          ((_ to_fp 11 53) x1_ack!2277))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2280)
          ((_ to_fp 11 53) x1_ack!2277))))

(check-sat)
(exit)
