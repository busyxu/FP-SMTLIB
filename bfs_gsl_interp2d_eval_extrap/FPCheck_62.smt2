(declare-fun x1_ack!590 () (_ BitVec 64))
(declare-fun x0_ack!595 () (_ BitVec 64))
(declare-fun y0_ack!591 () (_ BitVec 64))
(declare-fun x_ack!593 () (_ BitVec 64))
(declare-fun y_ack!594 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z0_ack!592 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!595) ((_ to_fp 11 53) x1_ack!590))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!591) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!593) ((_ to_fp 11 53) x0_ack!595))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!593) ((_ to_fp 11 53) x1_ack!590)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!594) ((_ to_fp 11 53) y0_ack!591))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!594) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!593)
                                   ((_ to_fp 11 53) x0_ack!595))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!590)
                                   ((_ to_fp 11 53) x0_ack!595)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!594)
                                   ((_ to_fp 11 53) y0_ack!591))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!591))))))
  (FPCHECK_FMUL_UNDERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!592)))

(check-sat)
(exit)
