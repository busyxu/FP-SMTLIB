(declare-fun x1_ack!820 () (_ BitVec 64))
(declare-fun x0_ack!825 () (_ BitVec 64))
(declare-fun y0_ack!821 () (_ BitVec 64))
(declare-fun x_ack!823 () (_ BitVec 64))
(declare-fun y_ack!824 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!822 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!825) ((_ to_fp 11 53) x1_ack!820))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!821) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!823) ((_ to_fp 11 53) x0_ack!825))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!823) ((_ to_fp 11 53) x1_ack!820)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!824) ((_ to_fp 11 53) y0_ack!821))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!824) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!823)
                                   ((_ to_fp 11 53) x0_ack!825))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!820)
                                   ((_ to_fp 11 53) x0_ack!825))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!824)
                                   ((_ to_fp 11 53) y0_ack!821))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!821))))))
  (FPCHECK_FMUL_OVERFLOW a!2 z1_ack!822))))

(check-sat)
(exit)
