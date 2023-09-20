(declare-fun t_ack!141 () (_ BitVec 64))
(declare-fun t1_ack!142 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!144 () (_ BitVec 64))
(declare-fun h_ack!145 () (_ BitVec 64))
(declare-fun y0_ack!143 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!142)
                    ((_ to_fp 11 53) t_ack!141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!142)
                    ((_ to_fp 11 53) t_ack!141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!142)
                     ((_ to_fp 11 53) t_ack!141))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!142)
                    ((_ to_fp 11 53) t_ack!141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  y0_ack!143
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fac71c71c71c71c)
                  ((_ to_fp 11 53) h_ack!145))
          ((_ to_fp 11 53) y1_ack!144))))

(check-sat)
(exit)
