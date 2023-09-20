(declare-fun t_ack!1326 () (_ BitVec 64))
(declare-fun t1_ack!1327 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun h_ack!1328 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1327)
                    ((_ to_fp 11 53) t_ack!1326))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1327)
                    ((_ to_fp 11 53) t_ack!1326))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!1327)
                     ((_ to_fp 11 53) t_ack!1326))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1327)
                    ((_ to_fp 11 53) t_ack!1326))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!1326
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fd8000000000000)
          ((_ to_fp 11 53) h_ack!1328))))

(check-sat)
(exit)
