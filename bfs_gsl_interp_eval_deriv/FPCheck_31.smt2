(declare-fun x1_ack!222 () (_ BitVec 64))
(declare-fun x0_ack!226 () (_ BitVec 64))
(declare-fun x2_ack!223 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!224 () (_ BitVec 64))
(declare-fun y1_ack!225 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!226) ((_ to_fp 11 53) x1_ack!222)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!222) ((_ to_fp 11 53) x2_ack!223)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!222)
                       ((_ to_fp 11 53) x0_ack!226))
               ((_ to_fp 11 53) x0_ack!226))
       ((_ to_fp 11 53) x1_ack!222)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!222)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!222)
                       ((_ to_fp 11 53) x0_ack!226)))
       ((_ to_fp 11 53) x0_ack!226)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!223)
                       ((_ to_fp 11 53) x1_ack!222))
               ((_ to_fp 11 53) x1_ack!222))
       ((_ to_fp 11 53) x2_ack!223)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!223)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!223)
                       ((_ to_fp 11 53) x1_ack!222)))
       ((_ to_fp 11 53) x1_ack!222)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!222)
                    ((_ to_fp 11 53) x0_ack!226))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!223)
                    ((_ to_fp 11 53) x1_ack!222))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!225)
          ((_ to_fp 11 53) y0_ack!224))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!222)
                  ((_ to_fp 11 53) x0_ack!226)))))

(check-sat)
(exit)
