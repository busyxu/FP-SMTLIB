(declare-fun t_ack!10004 () (_ BitVec 64))
(declare-fun t1_ack!10005 () (_ BitVec 64))
(declare-fun h_ack!10006 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10005)
                    ((_ to_fp 11 53) t_ack!10004))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10005)
                    ((_ to_fp 11 53) t_ack!10004))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10005)
                ((_ to_fp 11 53) t_ack!10004))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10006)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10005)
                    ((_ to_fp 11 53) t_ack!10004)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10005)
                    ((_ to_fp 11 53) t_ack!10004))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  t_ack!10004
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fd8000000000000)
          ((_ to_fp 11 53) h_ack!10006))))

(check-sat)
(exit)
