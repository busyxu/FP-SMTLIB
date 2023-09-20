(declare-fun x1_ack!202 () (_ BitVec 64))
(declare-fun x0_ack!206 () (_ BitVec 64))
(declare-fun x2_ack!203 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!204 () (_ BitVec 64))
(declare-fun y1_ack!205 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!206) ((_ to_fp 11 53) x1_ack!202)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!202) ((_ to_fp 11 53) x2_ack!203)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!202)
                       ((_ to_fp 11 53) x0_ack!206))
               ((_ to_fp 11 53) x0_ack!206))
       ((_ to_fp 11 53) x1_ack!202)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!202)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!202)
                       ((_ to_fp 11 53) x0_ack!206)))
       ((_ to_fp 11 53) x0_ack!206)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!203)
                       ((_ to_fp 11 53) x1_ack!202))
               ((_ to_fp 11 53) x1_ack!202))
       ((_ to_fp 11 53) x2_ack!203)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!203)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!203)
                       ((_ to_fp 11 53) x1_ack!202)))
       ((_ to_fp 11 53) x1_ack!202)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!202)
                    ((_ to_fp 11 53) x0_ack!206))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!203)
                    ((_ to_fp 11 53) x1_ack!202))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!205)
          ((_ to_fp 11 53) y0_ack!204))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!202)
                  ((_ to_fp 11 53) x0_ack!206)))))

(check-sat)
(exit)
