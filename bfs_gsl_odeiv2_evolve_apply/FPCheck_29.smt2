(declare-fun t_ack!151 () (_ BitVec 64))
(declare-fun t1_ack!152 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!154 () (_ BitVec 64))
(declare-fun h_ack!155 () (_ BitVec 64))
(declare-fun y0_ack!153 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!152)
                    ((_ to_fp 11 53) t_ack!151))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!152)
                    ((_ to_fp 11 53) t_ack!151))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!152)
                     ((_ to_fp 11 53) t_ack!151))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!152)
                    ((_ to_fp 11 53) t_ack!151))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  y0_ack!153
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fac71c71c71c71c)
                  ((_ to_fp 11 53) h_ack!155))
          ((_ to_fp 11 53) y1_ack!154))))

(check-sat)
(exit)
