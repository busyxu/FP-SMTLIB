(declare-fun t_ack!895 () (_ BitVec 64))
(declare-fun t1_ack!896 () (_ BitVec 64))
(declare-fun h_ack!897 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!896)
                    ((_ to_fp 11 53) t_ack!895))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!896)
               ((_ to_fp 11 53) t_ack!895))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!897) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!896)
                ((_ to_fp 11 53) t_ack!895))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!897)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!896)
               ((_ to_fp 11 53) t_ack!895))))
(assert (FPCHECK_FADD_OVERFLOW
  t_ack!895
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fb5555555555555)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!896)
                  ((_ to_fp 11 53) t_ack!895)))))

(check-sat)
(exit)
