(declare-fun a_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!27))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!27))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!27)) ((_ to_fp 11 53) #x40862642fefa39ef)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!27))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!27))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!27))
        ((_ to_fp 11 53) #x4020000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4048000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!27)))
                   ((_ to_fp 11 53) #x4026000000000000))))
  (FPCHECK_FDIV_OVERFLOW a!1 #x4014000000000000)))

(check-sat)
(exit)
