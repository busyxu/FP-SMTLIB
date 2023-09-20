(declare-fun x1_ack!795 () (_ BitVec 64))
(declare-fun x0_ack!799 () (_ BitVec 64))
(declare-fun y0_ack!796 () (_ BitVec 64))
(declare-fun x_ack!797 () (_ BitVec 64))
(declare-fun y_ack!798 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!799) ((_ to_fp 11 53) x1_ack!795))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!796) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!797) ((_ to_fp 11 53) x0_ack!799))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!797) ((_ to_fp 11 53) x1_ack!795)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!798) ((_ to_fp 11 53) y0_ack!796))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!798) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!797)
                                   ((_ to_fp 11 53) x0_ack!799))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!795)
                                   ((_ to_fp 11 53) x0_ack!799))))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!798)
                    ((_ to_fp 11 53) y0_ack!796))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!796))))))

(check-sat)
(exit)
