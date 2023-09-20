(declare-fun x1_ack!644 () (_ BitVec 64))
(declare-fun x0_ack!648 () (_ BitVec 64))
(declare-fun y0_ack!645 () (_ BitVec 64))
(declare-fun x_ack!646 () (_ BitVec 64))
(declare-fun y_ack!647 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!648) ((_ to_fp 11 53) x1_ack!644))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!645) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!646) ((_ to_fp 11 53) x0_ack!648))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!646) ((_ to_fp 11 53) x1_ack!644)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!647) ((_ to_fp 11 53) y0_ack!645))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!647) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!647)
                                   ((_ to_fp 11 53) y0_ack!645))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!645))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!646)
                    ((_ to_fp 11 53) x0_ack!648))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!644)
                    ((_ to_fp 11 53) x0_ack!648)))
    a!1)))

(check-sat)
(exit)
