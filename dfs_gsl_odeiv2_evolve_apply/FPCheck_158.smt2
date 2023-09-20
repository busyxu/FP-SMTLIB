(declare-fun t_ack!1421 () (_ BitVec 64))
(declare-fun t1_ack!1422 () (_ BitVec 64))
(declare-fun h_ack!1423 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1422)
                    ((_ to_fp 11 53) t_ack!1421))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1422)
               ((_ to_fp 11 53) t_ack!1421))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1423) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1422)
                ((_ to_fp 11 53) t_ack!1421))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1423)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1422)
               ((_ to_fp 11 53) t_ack!1421))))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!1421
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!1422)
                  ((_ to_fp 11 53) t_ack!1421)))))

(check-sat)
(exit)
