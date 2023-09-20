(declare-fun t_ack!874 () (_ BitVec 64))
(declare-fun t1_ack!875 () (_ BitVec 64))
(declare-fun h_ack!876 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!875)
                    ((_ to_fp 11 53) t_ack!874))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!875)
               ((_ to_fp 11 53) t_ack!874))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!876) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!875)
                ((_ to_fp 11 53) t_ack!874))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!876)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!875)
               ((_ to_fp 11 53) t_ack!874))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fb5555555555555
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!875)
          ((_ to_fp 11 53) t_ack!874))))

(check-sat)
(exit)
