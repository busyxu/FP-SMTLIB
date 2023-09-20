(declare-fun t_ack!8726 () (_ BitVec 64))
(declare-fun t1_ack!8727 () (_ BitVec 64))
(declare-fun h_ack!8728 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8727)
                    ((_ to_fp 11 53) t_ack!8726))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8727)
                    ((_ to_fp 11 53) t_ack!8726))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!8727)
                ((_ to_fp 11 53) t_ack!8726))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!8728)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8727)
                    ((_ to_fp 11 53) t_ack!8726)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!8727)
                    ((_ to_fp 11 53) t_ack!8726))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!8726
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc0000000000000)
          ((_ to_fp 11 53) h_ack!8728))))

(check-sat)
(exit)
