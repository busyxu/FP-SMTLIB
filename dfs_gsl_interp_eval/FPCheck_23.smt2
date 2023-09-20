(declare-fun x1_ack!154 () (_ BitVec 64))
(declare-fun x0_ack!156 () (_ BitVec 64))
(declare-fun x2_ack!155 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!156) ((_ to_fp 11 53) x1_ack!154)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!154) ((_ to_fp 11 53) x2_ack!155)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!154)
                       ((_ to_fp 11 53) x0_ack!156))
               ((_ to_fp 11 53) x0_ack!156))
       ((_ to_fp 11 53) x1_ack!154)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!154)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!154)
                       ((_ to_fp 11 53) x0_ack!156)))
       ((_ to_fp 11 53) x0_ack!156)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!155)
                       ((_ to_fp 11 53) x1_ack!154))
               ((_ to_fp 11 53) x1_ack!154))
       ((_ to_fp 11 53) x2_ack!155)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!155)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!155)
                       ((_ to_fp 11 53) x1_ack!154)))
       ((_ to_fp 11 53) x1_ack!154)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!154)
                    ((_ to_fp 11 53) x0_ack!156))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!155)
                    ((_ to_fp 11 53) x1_ack!154))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!155)
                  ((_ to_fp 11 53) x1_ack!154))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!154)
                  ((_ to_fp 11 53) x0_ack!156)))))

(check-sat)
(exit)
