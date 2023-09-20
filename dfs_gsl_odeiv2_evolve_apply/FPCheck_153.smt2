(declare-fun t_ack!1388 () (_ BitVec 64))
(declare-fun t1_ack!1389 () (_ BitVec 64))
(declare-fun h_ack!1390 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1389)
                    ((_ to_fp 11 53) t_ack!1388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1389)
               ((_ to_fp 11 53) t_ack!1388))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1390) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1389)
                ((_ to_fp 11 53) t_ack!1388))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1390)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1389)
               ((_ to_fp 11 53) t_ack!1388))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fc0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!1389)
          ((_ to_fp 11 53) t_ack!1388))))

(check-sat)
(exit)
