(declare-fun x1_ack!163 () (_ BitVec 64))
(declare-fun x0_ack!165 () (_ BitVec 64))
(declare-fun x2_ack!164 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!165) ((_ to_fp 11 53) x1_ack!163)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!163) ((_ to_fp 11 53) x2_ack!164)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!163)
                       ((_ to_fp 11 53) x0_ack!165))
               ((_ to_fp 11 53) x0_ack!165))
       ((_ to_fp 11 53) x1_ack!163)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!163)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!163)
                       ((_ to_fp 11 53) x0_ack!165)))
       ((_ to_fp 11 53) x0_ack!165)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!164)
                       ((_ to_fp 11 53) x1_ack!163))
               ((_ to_fp 11 53) x1_ack!163))
       ((_ to_fp 11 53) x2_ack!164)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!164)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!164)
                       ((_ to_fp 11 53) x1_ack!163)))
       ((_ to_fp 11 53) x1_ack!163)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!163)
                    ((_ to_fp 11 53) x0_ack!165))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!164)
                    ((_ to_fp 11 53) x1_ack!163))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!164)
                  ((_ to_fp 11 53) x1_ack!163))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!163)
                  ((_ to_fp 11 53) x0_ack!165)))))

(check-sat)
(exit)
