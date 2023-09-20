(declare-fun t_ack!88 () (_ BitVec 64))
(declare-fun t1_ack!89 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!90 () (_ BitVec 64))
(declare-fun y1_ack!91 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!89)
                    ((_ to_fp 11 53) t_ack!88))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!89)
                    ((_ to_fp 11 53) t_ack!88))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          ((_ to_fp 11 53) y1_ack!91))
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y0_ack!90)
                  ((_ to_fp 11 53) y0_ack!90))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
