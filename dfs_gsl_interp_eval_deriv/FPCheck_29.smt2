(declare-fun x1_ack!205 () (_ BitVec 64))
(declare-fun x0_ack!209 () (_ BitVec 64))
(declare-fun x2_ack!206 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!207 () (_ BitVec 64))
(declare-fun y1_ack!208 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!209) ((_ to_fp 11 53) x1_ack!205)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!205) ((_ to_fp 11 53) x2_ack!206)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!205)
                       ((_ to_fp 11 53) x0_ack!209))
               ((_ to_fp 11 53) x0_ack!209))
       ((_ to_fp 11 53) x1_ack!205)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!205)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!205)
                       ((_ to_fp 11 53) x0_ack!209)))
       ((_ to_fp 11 53) x0_ack!209)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!206)
                       ((_ to_fp 11 53) x1_ack!205))
               ((_ to_fp 11 53) x1_ack!205))
       ((_ to_fp 11 53) x2_ack!206)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!206)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!206)
                       ((_ to_fp 11 53) x1_ack!205)))
       ((_ to_fp 11 53) x1_ack!205)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!205)
                    ((_ to_fp 11 53) x0_ack!209))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!206)
                    ((_ to_fp 11 53) x1_ack!205))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!208)
          ((_ to_fp 11 53) y0_ack!207))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!205)
                  ((_ to_fp 11 53) x0_ack!209)))))

(check-sat)
(exit)
