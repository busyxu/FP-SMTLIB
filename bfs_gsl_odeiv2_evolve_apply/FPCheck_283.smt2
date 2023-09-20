(declare-fun t_ack!1323 () (_ BitVec 64))
(declare-fun t1_ack!1324 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun h_ack!1325 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1324)
                    ((_ to_fp 11 53) t_ack!1323))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1324)
                    ((_ to_fp 11 53) t_ack!1323))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!1324)
                     ((_ to_fp 11 53) t_ack!1323))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1324)
                    ((_ to_fp 11 53) t_ack!1323))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  t_ack!1323
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fd8000000000000)
          ((_ to_fp 11 53) h_ack!1325))))

(check-sat)
(exit)
