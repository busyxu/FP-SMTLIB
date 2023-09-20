(declare-fun x1_ack!212 () (_ BitVec 64))
(declare-fun x0_ack!216 () (_ BitVec 64))
(declare-fun x2_ack!213 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!214 () (_ BitVec 64))
(declare-fun y1_ack!215 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!216) ((_ to_fp 11 53) x1_ack!212)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!212) ((_ to_fp 11 53) x2_ack!213)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!212)
                       ((_ to_fp 11 53) x0_ack!216))
               ((_ to_fp 11 53) x0_ack!216))
       ((_ to_fp 11 53) x1_ack!212)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!212)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!212)
                       ((_ to_fp 11 53) x0_ack!216)))
       ((_ to_fp 11 53) x0_ack!216)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!213)
                       ((_ to_fp 11 53) x1_ack!212))
               ((_ to_fp 11 53) x1_ack!212))
       ((_ to_fp 11 53) x2_ack!213)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!213)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!213)
                       ((_ to_fp 11 53) x1_ack!212)))
       ((_ to_fp 11 53) x1_ack!212)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!212)
                    ((_ to_fp 11 53) x0_ack!216))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!213)
                    ((_ to_fp 11 53) x1_ack!212))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!215)
          ((_ to_fp 11 53) y0_ack!214))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!212)
                  ((_ to_fp 11 53) x0_ack!216)))))

(check-sat)
(exit)
