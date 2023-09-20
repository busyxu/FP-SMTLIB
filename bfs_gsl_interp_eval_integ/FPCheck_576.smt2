(declare-fun x1_ack!7277 () (_ BitVec 64))
(declare-fun x0_ack!7281 () (_ BitVec 64))
(declare-fun x2_ack!7278 () (_ BitVec 64))
(declare-fun b_ack!7280 () (_ BitVec 64))
(declare-fun a_ack!7279 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7281) ((_ to_fp 11 53) x1_ack!7277)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7277) ((_ to_fp 11 53) x2_ack!7278)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7277)
                       ((_ to_fp 11 53) x0_ack!7281))
               ((_ to_fp 11 53) x0_ack!7281))
       ((_ to_fp 11 53) x1_ack!7277)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7277)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7277)
                       ((_ to_fp 11 53) x0_ack!7281)))
       ((_ to_fp 11 53) x0_ack!7281)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7278)
                       ((_ to_fp 11 53) x1_ack!7277))
               ((_ to_fp 11 53) x1_ack!7277))
       ((_ to_fp 11 53) x2_ack!7278)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7278)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7278)
                       ((_ to_fp 11 53) x1_ack!7277)))
       ((_ to_fp 11 53) x1_ack!7277)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7277)
                    ((_ to_fp 11 53) x0_ack!7281))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7278)
                    ((_ to_fp 11 53) x1_ack!7277))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7279) ((_ to_fp 11 53) b_ack!7280))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7279) ((_ to_fp 11 53) x0_ack!7281))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7280) ((_ to_fp 11 53) x2_ack!7278))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7279) ((_ to_fp 11 53) b_ack!7280))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7279) ((_ to_fp 11 53) x0_ack!7281))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7279) ((_ to_fp 11 53) x1_ack!7277))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7280) ((_ to_fp 11 53) x0_ack!7281))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7280) ((_ to_fp 11 53) x1_ack!7277)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7277) ((_ to_fp 11 53) b_ack!7280))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7277)
                    ((_ to_fp 11 53) x0_ack!7281))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7278)
                    ((_ to_fp 11 53) x1_ack!7277))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7277)
          ((_ to_fp 11 53) x1_ack!7277))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7277)
          ((_ to_fp 11 53) x1_ack!7277))))

(check-sat)
(exit)
