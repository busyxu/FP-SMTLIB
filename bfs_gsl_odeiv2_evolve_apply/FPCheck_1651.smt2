(declare-fun t_ack!8714 () (_ BitVec 64))
(declare-fun t1_ack!8715 () (_ BitVec 64))
(declare-fun h_ack!8716 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8715)
                    ((_ to_fp 11 53) t_ack!8714))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8715)
                    ((_ to_fp 11 53) t_ack!8714))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!8715)
                ((_ to_fp 11 53) t_ack!8714))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!8716)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8715)
                    ((_ to_fp 11 53) t_ack!8714)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8715)
                    ((_ to_fp 11 53) t_ack!8714))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  t_ack!8714
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc0000000000000)
          ((_ to_fp 11 53) h_ack!8716))))

(check-sat)
(exit)
