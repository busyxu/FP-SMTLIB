(declare-fun t_ack!1415 () (_ BitVec 64))
(declare-fun t1_ack!1416 () (_ BitVec 64))
(declare-fun h_ack!1417 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1416)
                    ((_ to_fp 11 53) t_ack!1415))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1416)
               ((_ to_fp 11 53) t_ack!1415))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1417) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1416)
                ((_ to_fp 11 53) t_ack!1415))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1417)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1416)
               ((_ to_fp 11 53) t_ack!1415))))
(assert (FPCHECK_FADD_UNDERFLOW
  t_ack!1415
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!1416)
                  ((_ to_fp 11 53) t_ack!1415)))))

(check-sat)
(exit)
